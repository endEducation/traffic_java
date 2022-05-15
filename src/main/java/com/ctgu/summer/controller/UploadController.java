package com.ctgu.summer.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ctgu.summer.entity.Disease;
import com.ctgu.summer.service.DiseaseService;
import com.ctgu.summer.utils.*;
import com.ctgu.summer.vo.Result;
import com.ctgu.summer.vo.ResultEnum;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigDecimal;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RequestMapping("/summer/img")
@RestController
public class UploadController {

    public static String UPLOAD_PATH = "src/main/resources/static/img/";
    @Autowired
    private DiseaseService diseaseService;

    @Autowired
    private WebSocketServer webSocketServer;

    @PostMapping("/upload")
    @ResponseBody
    public String singleFileUpload(@RequestParam("file") MultipartFile file,
                                   HttpServletRequest request) throws IOException {
        CosUtils client = new CosUtils();
        String url = client.uploadFile(file);
        System.out.println(url);
        return url;
//        String disease = "";
//        String lei = IdentifyUtils.identifyPic(url);
//        Pattern p = Pattern.compile("\t|\r|\n");
//        Matcher type = p.matcher(lei);
//        lei = type.replaceAll("");
//        Map<String,Object> map = new HashMap();
//        Result result = new Result();
//        if(StringUtils.equals(lei,"0")){
//            disease = "水稻条纹叶枯病";
//        }else if (StringUtils.equals(lei,"1")){
//            disease = "水稻细菌性褐条病";
//        }else if(StringUtils.equals(lei,"2")){
//            disease = "水稻胡麻叶斑病";
//        }else{
//            disease = "error";
//        }
//        float Max = 97, Min = 93.0f;
//        BigDecimal db = new BigDecimal(Math.random() * (Max - Min) + Min);
//        String random = db.setScale(4, BigDecimal.ROUND_HALF_UP).toString();
//        System.out.println(db.setScale(4, BigDecimal.ROUND_HALF_UP).toString());
//        // 查询疾病百科内容
//        QueryWrapper<Disease> qw_dis = new QueryWrapper<>();
//        qw_dis.eq("name", disease);
//        Disease dis = diseaseService.getOne(qw_dis);
//        map.put("disOne", dis);
//        map.put("disease",disease);
//        map.put("probability",random);
//        if (map.get("disease").equals("error")){
//            return ResultUtil.error("识别失败");
//        }else{
//            return ResultUtil.success("识别成功",map);
//        }
    }


//        try {
//            byte[] bytes = file.getBytes();
//            String imageFileName = file.getOriginalFilename();
//            String fileName = UpPhotoNameUtils.getPhotoName("img",imageFileName);
//            Path path = Paths.get(UPLOAD_PATH + fileName);
//            Files.write(path, bytes);
//            System.out.println(fileName+"\n");
//            return fileName;
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        return "";

        //使用流将图片输出
//    @GetMapping("/getImage/{name}")
//    public void getImage(HttpServletResponse response, @PathVariable("name") String name) throws IOException {
//        response.setContentType("image/jpg;charset=utf-8");
//        response.setHeader("Content-Disposition", "inline; filename=girls.png");
//        ServletOutputStream outputStream = response.getOutputStream();
//        outputStream.write(Files.readAllBytes(Paths.get(UPLOAD_PATH).resolve(name)));
//        outputStream.flush();
//        outputStream.close();
//    }

    @GetMapping("/test")
    public Result test(@RequestParam("imgUrl") String url) throws IOException {
        String path = Download.downloadImage(url);
        File f = new File(path);//要传输的图片路径地址
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

        return ResultUtil.success();
    }

    @RequestMapping("/receiveImage")
    public Result receiveImage(@RequestParam("image_file") MultipartFile file) throws IOException {
        CosUtils client = new CosUtils();
        String url = client.uploadFile(file);
        webSocketServer.sendOneMessage("admin",url);
        return ResultUtil.success();
    }


    @GetMapping("/recognition")
    public Result recognized(@RequestParam("rImgUrl") String url) throws IOException {
        String path = Download.downloadImage(url);
        File f = new File(path);//要传输的图片路径地址
        String host = "127.0.0.1";//本机运行
        int port = 9997;
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
        System.out.println("识别到这里了！");
        socket.close();
        os.close();
        fis.close();
        pw.close();
        baos.close();

        return ResultUtil.success();
    }

    @RequestMapping("/receiveImage2")
    public Result receiveImage2(@RequestParam("image_file2") MultipartFile file) throws IOException {
        CosUtils client = new CosUtils();
        String url = client.uploadFile(file);
        String Url = url + ',';
        webSocketServer.sendOneMessage2("admin",Url);
        return ResultUtil.success();
    }

}
