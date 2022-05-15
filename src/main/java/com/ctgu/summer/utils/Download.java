package com.ctgu.summer.utils;

import cn.hutool.http.HttpUtil;
import com.baomidou.mybatisplus.core.toolkit.IdWorker;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Download {

    //将腾讯云文件保存到本地,并返回路径
    public static String downloadImage(String fileUrl) {
        String path = null;
        if (fileUrl != null) {
            String fileName = fileUrl.substring(fileUrl.lastIndexOf("."));//获取后缀名
            try {
                String uuidName = IdWorker.get32UUID();//设置文件名称,这里可以通过规则动态生成.
                path = "D:\\A\\ctgu_end\\image_dehaze\\image"+"\\"+uuidName+fileName;//用于返回的路径
                HttpUtil.downloadFile(fileUrl, "D:\\A\\ctgu_end\\image_dehaze\\image" + File.separator + uuidName + fileName);//文件保存的关键步骤
            } catch (Exception e) {
                e.printStackTrace();
            } finally {

            }
        }
        return path;
    }


}
