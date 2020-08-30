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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 帐户web
 */
@Controller
@RequestMapping("/display")
public class DisplayController {

    @Autowired
    private IAccountService accountService;

    @Autowired
    private ITextDataService textDataService;

    @Autowired
    private IFileDataService fileDataService;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String showIndex(){
        return "display/index";
    }

    public String[] page_dir_1 = {
            "政务公开",
            "党务公开",
            "廉政教育",
            "信息调研",
            "党建宣传",
            "反腐倡廉",
            "法治央行",
            "内部管理",
            "下载中心",
            "支行动态",
            "一周安排",
            "公告栏",
            "信息排行",
            "光荣榜",
            "金融快讯",
            "为你服务",
            "群组路线活动",
            "守纪律讲规矩",
            "两学一做",
            "图片新闻",
            "行长信箱",
            "廉政信箱",
            "党员公开意见表",
            "文章权限",
            "管理账户"};
    public String[][] page_dir_2 = {};

    /**
     * 用户登录
     * @param account
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Account account, Model model, HttpSession session){
        //获取用户名和密码
        String username=account.getName();
        String password=account.getPassword();

        System.out.println(account.toString());

        //些处横板从数据库中获取对用户名和密码后进行判断
        if(username!=null&&username.equals("admin")&&password!=null&&password.equals("admin")){
            //将用户对象添加到Session中
            session.setAttribute("ACCOUNT_SESSION",account);
            //重定向到主页面的跳转方法
            return "redirect:../management/index";
        }else{
            List<Account> list = accountService.findAll();
            for(Account a : list){
                if(a.getName().equals(username)&&a.getPassword().equals(password)){
                    session.setAttribute("ACCOUNT_SESSION",account);
                    return "redirect:../management/index";
                }
            }
        }

        return "display/index";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session){
        //清除session
        session.invalidate();
        //重定向到登录页面的跳转方法
        return "redirect:display/index";
    }

    @RequestMapping(value = "/mainpage")
    public String getMainpage(Model model){
        List<TextData> list = textDataService.findAll();

        List<TextData> list_1 = new ArrayList<>();
        List<TextData> list_2 = new ArrayList<>();
        List<TextData> list_4 = new ArrayList<>();
        List<TextData> list_12 = new ArrayList<>();

        for(TextData txtData : list){
            System.out.println(txtData.toString());
            if(txtData.getDir_1()==1){
                list_1.add((txtData));
            }else if(txtData.getDir_1()==2){
                list_2.add((txtData));
            }else if(txtData.getDir_1()==4){
                list_4.add((txtData));
            }else if(txtData.getDir_1()==12){
                list_12.add((txtData));
            }
        }

        List<FileData> pic_list = fileDataService.findSelect(21,1);

        model.addAttribute("pic_list",pic_list);
        model.addAttribute("list_1",list_1);
        model.addAttribute("list_2",list_2);
        model.addAttribute("list_4",list_4);
        model.addAttribute("list_12",list_12);

        return "display/mainpage";
    }

    @RequestMapping(value = "/displaypage")
    public String getDisplaypage(Model model,HttpServletRequest request){

        int dir_1_index = Integer.parseInt(request.getParameter("dir_1_index"));
        int dir_2_index = Integer.parseInt(request.getParameter("dir_2_index"));
        String dir_1 = page_dir_1[dir_1_index-1];
        model.addAttribute("dir_1_index",dir_1_index);
        model.addAttribute("dir_2_index",dir_2_index);
        model.addAttribute("dir_1",dir_1);

        List<TextData> list = textDataService.findAll();
        List<TextData> return_list = new ArrayList<>();

        for(TextData txtData : list){
            if(txtData.getDir_1()==dir_1_index){
                return_list.add((txtData));
            }
        }

        model.addAttribute("dir_1_index",dir_1_index);
        model.addAttribute("dir_2_index",dir_2_index);
        model.addAttribute("dir_1",dir_1);
        model.addAttribute("return_list",return_list);

        return "display/displaypage";
    }

    @RequestMapping(value = "/displayfilepage")
    public String getDisplayPicpage(Model model,HttpServletRequest request){

        int dir_1_index = Integer.parseInt(request.getParameter("dir_1_index"));
        int dir_2_index = Integer.parseInt(request.getParameter("dir_2_index"));
        String dir_1 = page_dir_1[dir_1_index-1];
        model.addAttribute("dir_1_index",dir_1_index);
        model.addAttribute("dir_2_index",dir_2_index);
        model.addAttribute("dir_1",dir_1);

        List<FileData> list = fileDataService.findAll();
        List<FileData> return_list = new ArrayList<>();

        for(FileData fileData : list){
            if(fileData.getDir_1()==dir_1_index){
                return_list.add((fileData));
            }
        }

        model.addAttribute("dir_1_index",dir_1_index);
        model.addAttribute("dir_2_index",dir_2_index);
        model.addAttribute("dir_1",dir_1);
        model.addAttribute("return_list",return_list);

        return "display/displayfilepage";
    }



}
