package com.ctgu.summer.utils;

import java.io.*;
import java.net.Socket;
import java.util.Base64;

public class javaSocket {
    public static void main(String[] args) throws IOException {
        File f = new File("D:\\A\\summerSS\\project\\rice-pest\\src\\main\\resources\\images\\flower.png");//要传输的图片路径地址
        String host = "127.0.0.1";//本机运行
        int port = 9998;
        Socket socket = new Socket(host, port);
        OutputStream os =  socket.getOutputStream();
        FileInputStream fis = new FileInputStream(f);
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        int length = 0;
        byte[] sendBytes = null;
        sendBytes = new byte[1024*20];
        while((length = fis.read(sendBytes, 0, sendBytes.length)) > 0){
            baos.write(sendBytes, 0, length);
        }
        baos.flush();
        PrintWriter pw = new PrintWriter(os);
        pw.write(Base64.getEncoder().encodeToString(baos.toByteArray()));
        pw.flush();
        socket.shutdownOutput();
        InputStream is = socket.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(is));
        String info = br.readLine();
        System.out.println("到这里了！");
        socket.close();
        os.close();
        fis.close();
        pw.close();
        baos.close();
    }

}
