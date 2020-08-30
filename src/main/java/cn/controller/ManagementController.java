package cn.controller;

import cn.domain.Account;
import cn.domain.FileData;
import cn.domain.TextData;
import cn.service.IAccountService;
import cn.service.IFileDataService;
import cn.service.ITextDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/management")
public class ManagementController {
    public static boolean debug = true;

    @Autowired
    private IAccountService accountService;

    @Autowired
    private ITextDataService textDataService;

    @Autowired
    private IFileDataService fileDataService;


    @RequestMapping("/index")
    public String getIndex(Model model){
        System.out.println("management index");
        return "management_index";
    }

    @RequestMapping("/addadmin")
    public String getAddAdmin(Model model){
        System.out.println("management addAdmin");
        return "management_addadmin";
    }

    @RequestMapping("/editadmin")
    public String getEditAdmin(Model model){
        System.out.println("management editAdmin");
        // 调用service的方法
        List<Account> list = accountService.findAll();
        for (Account account : list) {
            System.out.println(account);
        }
        model.addAttribute("list",list);
        System.out.println("editadmin：return...");

        return "management_editadmin";
    }

    @RequestMapping("/saveaddadmin")
    public void save(Account account, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println(account.toString());
        accountService.saveAccount(account);
        response.sendRedirect(request.getContextPath()+"/management/editadmin");
        return;
    }

    //政务公开，工作制度
    @RequestMapping(value = "/zhengwugongkai/gongzuozhidu", method = RequestMethod.GET)
    public String show_dir1_dir1(Model model){
        if(debug){
            System.out.println("show_dir1_dir1 政务公开，工作制度");
        }

        int dir_1 = 1;
        int dir_2 = 1;

        List<TextData> list = textDataService.findSelect(dir_1,dir_2);

        model.addAttribute("list",list);

        return "01_zhengwugongkai/index1";
    }

    @RequestMapping(value = "/zhengwugongkai/gongzuozhidu", method = RequestMethod.POST)
    public void add_dir1_dir1(TextData textData, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Timestamp time= new Timestamp(System.currentTimeMillis());//获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        textData.setTime(timeStr);
        if(debug){
            System.out.println(textData.toString());
        }
        textDataService.saveData(textData);
        response.sendRedirect(request.getContextPath()+"/management/zhengwugongkai/gongzuozhidu");
        return;
    }

    @RequestMapping(value = "/zhengwugongkai/gongzuozhidu", method = RequestMethod.DELETE)
    public void delete_dir1_dir1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int delete_id = Integer.parseInt(request.getParameter("id"));
        if(debug){
            System.out.println("delete data " + delete_id);
        }
        textDataService.deleteSelect(delete_id);
        response.sendRedirect(request.getContextPath()+"/management/zhengwugongkai/gongzuozhidu");
        return;
    }


    //政务公开，工作动态
    @RequestMapping(value = "/zhengwugongkai/gongzuodongtai", method = RequestMethod.GET)
    public String show_dir1_dir2(Model model){
        if(debug){
            System.out.println("show_dir1_dir2 政务公开，工作动态");
        }

        int dir_1 = 1;
        int dir_2 = 2;

        List<TextData> list = textDataService.findSelect(dir_1,dir_2);

        model.addAttribute("list",list);

        return "01_zhengwugongkai/index2";
    }

    @RequestMapping(value = "/zhengwugongkai/gongzuodongtai", method = RequestMethod.POST)
    public void add_dir1_dir2(TextData textData, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Timestamp time= new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        textData.setTime(timeStr);
        if(debug){
            System.out.println(textData.toString());
        }
        textDataService.saveData(textData);
        response.sendRedirect(request.getContextPath()+"/management/zhengwugongkai/gongzuodongtai");
        return;
    }

    @RequestMapping(value = "/zhengwugongkai/gongzuodongtai", method = RequestMethod.DELETE)
    public void delete_dir1_dir2(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int delete_id = Integer.parseInt(request.getParameter("id"));
        if(debug){
            System.out.println("delete data " + delete_id);
        }
        textDataService.deleteSelect(delete_id);
        response.sendRedirect(request.getContextPath()+"/management/zhengwugongkai/gongzuodongtai");
        return;
    }


    /**
     * 党务公开
     * 党务公开目录
     * @param model
     * @return
     */
    @RequestMapping(value = "/dangwugongkai/dangwugongkaimulu", method = RequestMethod.GET)
    public String show_dir2_dir1(Model model){
        if(debug){
            System.out.println("show_dir2_dir1 党务公开，党务公开目录");
        }

        int dir_1 = 2;
        int dir_2 = 1;

        List<TextData> list = textDataService.findSelect(dir_1,dir_2);

        model.addAttribute("list",list);

        return "02_dangwugongkai/index1";
    }

    @RequestMapping(value = "/dangwugongkai/dangwugongkaimulu", method = RequestMethod.POST)
    public void add_dir2_dir1(TextData textData, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Timestamp time= new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        textData.setTime(timeStr);
        if(debug){
            System.out.println(textData.toString());
        }
        textDataService.saveData(textData);
        response.sendRedirect(request.getContextPath()+"/management/dangwugongkai/dangwugongkaimulu");
        return;
    }

    @RequestMapping(value = "/dangwugongkai/dangwugongkaimulu", method = RequestMethod.DELETE)
    public void delete_dir2_dir1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int delete_id = Integer.parseInt(request.getParameter("id"));
        if(debug){
            System.out.println("delete data " + delete_id);
        }
        textDataService.deleteSelect(delete_id);
        response.sendRedirect(request.getContextPath()+"/management/dangwugongkai/dangwugongkaimulu");
        return;
    }

    /**
     * 公告栏
     * 内容
     * @param model
     * @return
     */
    @RequestMapping(value = "/gonggaolan/index", method = RequestMethod.GET)
    public String show_dir12_dir1(Model model){
        if(debug){
            System.out.println("show_dir12_dir1 ");
        }

        int dir_1 = 12;
        int dir_2 = 1;

        List<TextData> list = textDataService.findSelect(dir_1,dir_2);

        model.addAttribute("list",list);

        return "12_gonggaolan/index1";
    }

    @RequestMapping(value = "/gonggaolan/index", method = RequestMethod.POST)
    public void add_dir12_dir1(TextData textData, HttpServletRequest request, HttpServletResponse response) throws IOException {
        Timestamp time= new Timestamp(System.currentTimeMillis());
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        textData.setTime(timeStr);
        if(debug){
            System.out.println(textData.toString());
        }
        textDataService.saveData(textData);
        response.sendRedirect(request.getContextPath()+"/management/gonggaolan/index");
        return;
    }

    @RequestMapping(value = "/gonggaolan/index", method = RequestMethod.DELETE)
    public void delete_dir12_dir1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int delete_id = Integer.parseInt(request.getParameter("id"));
        if(debug){
            System.out.println("delete data " + delete_id);
        }
        textDataService.deleteSelect(delete_id);
        response.sendRedirect(request.getContextPath()+"/management/gonggaolan/index");
        return;
    }




    /**
     * 图片新闻
     * 内容
     * @param model
     * @return
     */
    @RequestMapping(value = "/tupianxingwen/index", method = RequestMethod.GET)
    public String show_dir21_dir1(Model model){
        if(debug){
            System.out.println("show_dir21_dir1 图片新闻");
        }

        int dir_1 = 21;
        int dir_2 = 1;

        List<FileData> list = fileDataService.findSelect(dir_1,dir_2);

        model.addAttribute("list",list);

        return "21_tupianxingwen/index1";
    }

    @RequestMapping(value = "/tupianxingwen/index", method = RequestMethod.POST)
    public void add_dir21_dir1(FileData fileData, HttpServletRequest request, HttpServletResponse response, MultipartFile upload) throws IOException {
        Timestamp time= new Timestamp(System.currentTimeMillis());//获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String timeStr = df.format(time);

        fileData.setTime(timeStr);
        String path = request.getSession().getServletContext().getRealPath("assets/uploads");

        File file = new File(path);
        if(!file.exists()){
            file.mkdirs();
        }

        String filename = upload.getOriginalFilename();
        //get filetype
        String[] strArray = filename.split("\\.");
        int suffixIndex = strArray.length -1;
        fileData.setFileType(strArray[suffixIndex]);
        if(!strArray[suffixIndex].equals("jpg")&&
                !strArray[suffixIndex].equals("jpeg")&&
                !strArray[suffixIndex].equals("png")&&
                !strArray[suffixIndex].equals("bmp")&&
                !strArray[suffixIndex].equals("gif")){
            System.out.println("file type is not picture");
            return;
        }


        //create unique file name and upload file
        String uuid = UUID.randomUUID().toString().replace("-","");
        filename = uuid + filename;
        upload.transferTo(new File(path,filename));
        fileData.setFileName(filename);

        if(debug){
            System.out.println(fileData.toString());
            System.out.println(path);
            System.out.println(filename);
        }

        fileDataService.saveData(fileData);
        response.sendRedirect(request.getContextPath()+"/management/tupianxingwen/index");
        return;
    }

    @RequestMapping(value = "/tupianxingwen/index", method = RequestMethod.DELETE)
    public void delete_dir21_dir1(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int delete_id = Integer.parseInt(request.getParameter("id"));
        if(debug){
            System.out.println("delete data " + delete_id);
        }
        fileDataService.deleteSelect(delete_id);
        response.sendRedirect(request.getContextPath()+"/management/tupianxingwen/index");
        return;
    }




}
