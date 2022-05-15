import cv2
import math
import numpy as np


def DarkChannel(im,sz):
    # 分离通道,消除色差
    b,g,r = cv2.split(im)
    # 比较图像中像素的大小，按照要求保留较大值或者较小的值
    dc = cv2.min(cv2.min(r,g),b)
    # 第一个参数表示核的形状。可以选择三种
    # 矩形：MORPH_RECT;
    # 交叉形：MORPH_CROSS;
    # 椭圆形：MORPH_ELLIPSE;
    # 第二个参数表示核的尺寸
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT,(sz,sz))
    # erode()函数可以对输入图像用特定结构元素进行腐蚀操作，该结构元素确定腐蚀操作过程中的邻域的形状，各点像素值将被替换为对应邻域上的最小值
    dark = cv2.erode(dc,kernel)

    return dark

def AtmLight(im,dark):
    [h,w] = im.shape[:2]
    imsz = h*w
    numpx = int(max(math.floor(imsz/1000),1))
    darkvec = dark.reshape(imsz)
    imvec = im.reshape(imsz,3)

    indices = darkvec.argsort()
    indices = indices[imsz-numpx::]

    atmsum = np.zeros([1,3])
    for ind in range(1,numpx):
       atmsum = atmsum + imvec[indices[ind]]

    A = atmsum / numpx
    return A

def TransmissionEstimate(im,A,sz):
    omega = 0.95;
    im3 = np.empty(im.shape,im.dtype)

    for ind in range(0,3):
        im3[:,:,ind] = im[:,:,ind]/A[0,ind]

    transmission = 1 - omega*DarkChannel(im3,sz)
    return transmission
# 引导滤波算法
def Guidedfilter(im,p,r,eps):
    # boxfilter函数，它是基于积分图算法实现的，boxfilter中每个元素的值是该像素邻域内的像素和（或像素平方和）
    # 在需要求某个矩形内像素和的时候，直接访问数组中对应的位置就可以了
    mean_I = cv2.boxFilter(im,cv2.CV_64F,(r,r))
    mean_p = cv2.boxFilter(p, cv2.CV_64F,(r,r))
    mean_Ip = cv2.boxFilter(im*p,cv2.CV_64F,(r,r))
    cov_Ip = mean_Ip - mean_I*mean_p

    mean_II = cv2.boxFilter(im*im,cv2.CV_64F,(r,r))
    var_I   = mean_II - mean_I*mean_I

    a = cov_Ip/(var_I + eps)
    b = mean_p - a*mean_I

    mean_a = cv2.boxFilter(a,cv2.CV_64F,(r,r))
    mean_b = cv2.boxFilter(b,cv2.CV_64F,(r,r))

    q = mean_a*im + mean_b
    return q

def TransmissionRefine(im,et):
    # 进行通道的转换
    gray = cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
    gray = np.float64(gray)/255
    r = 60
    # 越大类别数越少——参数越大的话，多个簇和大部分对象会归并到同一个簇中
    eps = 0.0001
    t = Guidedfilter(gray,et,r,eps)

    return t

def Recover(im,t,A,tx = 0.1):
    res = np.empty(im.shape,im.dtype)
    t = cv2.max(t,tx)

    for ind in range(0,3):
        res[:,:,ind] = (im[:,:,ind]-A[0,ind])/t + A[0,ind]

    return res

if __name__ == '__main__':
    import sys
    try:
        fn = sys.argv[1]
    except:
        fn = './image/15.png'

    def nothing(*argv):
        pass

    src = cv2.imread(fn)

    # 数据类型转化函数,转换成数值类型
    I = src.astype('float64')/255
    # 暗原色先验,获取RGB中的最小值的最小值
    dark = DarkChannel(I,15)
    # 获得全局背景光
    A = AtmLight(I,dark)
    #
    te = TransmissionEstimate(I,A,15)
    # 获得透射率
    t = TransmissionRefine(src,te)
    # 获取无雾图像
    J = Recover(I,t,A,0.1)
    # 原图
    # cv2.imshow("dark",dark);
    # 透射率图像
    # cv2.imshow("t",t);
    # 有雾图像
    # cv2.imshow('I',src);
    # 无雾图像
    cv2.imshow('J',J)
    # 保存无雾图像
    cv2.imwrite("./image/J.png",J*255)
    cv2.waitKey()
