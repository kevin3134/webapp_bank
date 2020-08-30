<%--
  Created by IntelliJ IDEA.
  User: liminhao
  Date: 8/8/20
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%

//    String dir_1 = "政务公开";
//    String dir_2 = "工作制度";
//    int dir_1_index = 1;
//    int dir_2_index = 1;
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>${dir_1}</title>
    <base href="<%=basePath%>">

    <!--favicon-->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- simplebar CSS-->
    <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!--Data Tables -->
    <link href="assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">
    <link href="assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css">
    <!-- animate CSS-->
    <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
    <!-- Icons CSS-->
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
    <!-- Sidebar CSS-->
    <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
    <!-- Custom Style-->
    <link href="assets/css/app-style.css" rel="stylesheet"/>

</head>

<body>


<!-- Start wrapper-->
<div id="wrapper">

    <!--Start sidebar-wrapper-->
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
        <div class="brand-logo">
            <a href="index.jsp">
                <img src="assets/images/logo-icon.png" class="logo-icon" alt="logo icon">
                <h5 class="logo-text">中国人民银行</h5>
            </a>
        </div>

        <ul class="sidebar-menu">
            <li class="sidebar-header">导航栏</li>
            <li>
                <a href="index.jsp">
                    <i class="zmdi zmdi-home"></i>
                    <span>首页</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="sidebar-submenu">
                    <li><a href="display/mainpage"><i class="zmdi zmdi-dot-circle-alt"></i>网站首页</a></li>
                    <li><a href="management/index"><i class="zmdi zmdi-dot-circle-alt"></i>管理首页</a></li>
                </ul>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=1&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>政务公开</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>工作制度</a></li>--%>
<%--                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>工作动态</a></li>--%>
<%--                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>目录指南</a></li>--%>
<%--                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>经验交流</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=2&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>党务公开</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/dangwugongkai/dangwugongkaimulu"><i class="zmdi zmdi-dot-circle-alt"></i>党务公开目录</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/dangzuzhijueyijueding"><i class="zmdi zmdi-dot-circle-alt"></i>党组织决议决定</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/dangdesixiangjianshe"><i class="zmdi zmdi-dot-circle-alt"></i>党的思想建设</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/dangdezuzhiguanli"><i class="zmdi zmdi-dot-circle-alt"></i>党的组织管理</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/lingdaobanzijianshe"><i class="zmdi zmdi-dot-circle-alt"></i>领导班子建设</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/gangburenxuanheguanli"><i class="zmdi zmdi-dot-circle-alt"></i>干部任选和管理</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/lianxihefuwudangyuan"><i class="zmdi zmdi-dot-circle-alt"></i>联系和服务党员</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/dangfenglianzhengjianshe"><i class="zmdi zmdi-dot-circle-alt"></i>党风廉政建设</a></li>--%>
<%--                    <li><a href="management/dangwugongkai/qitayinggongkaideshixiang"><i class="zmdi zmdi-dot-circle-alt"></i>其他应公开的事项</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=3&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>廉政教育</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/lianzhengjiaoyu/xuexiyuandi"><i class="zmdi zmdi-dot-circle-alt"></i>学习园地</a></li>--%>
<%--                    <li><a href="management/lianzhengjiaoyu/huodongdongtai"><i class="zmdi zmdi-dot-circle-alt"></i>活动动态</a></li>--%>
<%--                    <li><a href="management/lianzhengjiaoyu/xindetihui"><i class="zmdi zmdi-dot-circle-alt"></i>心得体会</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=4&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>信息调研</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/xingxidiaoyan/dangyangjinrong"><i class="zmdi zmdi-dot-circle-alt"></i>丹阳金融</a></li>--%>
<%--                    <li><a href="management/xingxidiaoyan/xingxi"><i class="zmdi zmdi-dot-circle-alt"></i>信息</a></li>--%>
<%--                    <li><a href="management/xingxidiaoyan/diaoyan"><i class="zmdi zmdi-dot-circle-alt"></i>调研</a></li>--%>
<%--                    <li><a href="management/xingxidiaoyan/tashangzhishi"><i class="zmdi zmdi-dot-circle-alt"></i>他山之石</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=5&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>党建宣传</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/dangjianxuanchuan/dangjiangongzuo"><i class="zmdi zmdi-dot-circle-alt"></i>党建工作</a></li>--%>
<%--                    <li><a href="management/dangjianxuanchuan/xuanchuansixizheng"><i class="zmdi zmdi-dot-circle-alt"></i>宣传思政</a></li>--%>
<%--                    <li><a href="management/dangjianxuanchuan/gonghuigongzuo"><i class="zmdi zmdi-dot-circle-alt"></i>工会工作</a></li>--%>
<%--                    <li><a href="management/dangjianxuanchuan/qingniangongzuo"><i class="zmdi zmdi-dot-circle-alt"></i>青年工作</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=6&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>反腐倡廉</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/fanfuchanglian/dangjifagui"><i class="zmdi zmdi-dot-circle-alt"></i>党纪法规</a></li>--%>
<%--                    <li><a href="management/fanfuchanglian/lianzhenggongshi"><i class="zmdi zmdi-dot-circle-alt"></i>廉政公式</a></li>--%>
<%--                    <li><a href="management/fanfuchanglian/lianwentuijian"><i class="zmdi zmdi-dot-circle-alt"></i>廉文推荐</a></li>--%>
<%--                    <li><a href="management/fanfuchanglian/lianzhengjiaoyu"><i class="zmdi zmdi-dot-circle-alt"></i>廉政教育</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=7&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>法治央行</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/fazhiyanghang/fazhidongtai"><i class="zmdi zmdi-dot-circle-alt"></i>法治动态</a></li>--%>
<%--                    <li><a href="management/fazhiyanghang/falvfagui"><i class="zmdi zmdi-dot-circle-alt"></i>法律法规</a></li>--%>
<%--                    <li><a href="management/fazhiyanghang/yifaxingzheng"><i class="zmdi zmdi-dot-circle-alt"></i>依法行政</a></li>--%>
<%--                    <li><a href="management/fazhiyanghang/yianshuofa"><i class="zmdi zmdi-dot-circle-alt"></i>以案说法</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=8&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>内部管理</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/neibuguanli/guizezhidu"><i class="zmdi zmdi-dot-circle-alt"></i>规章制度</a></li>--%>
<%--                    <li><a href="management/neibuguanli/danganjianshe"><i class="zmdi zmdi-dot-circle-alt"></i>档案建设</a></li>--%>
<%--                    <li><a href="management/neibuguanli/baomigongzuo"><i class="zmdi zmdi-dot-circle-alt"></i>保密工作</a></li>--%>
<%--                    <li><a href="management/neibuguanli/yingjiguanli"><i class="zmdi zmdi-dot-circle-alt"></i>应急管理</a></li>--%>
<%--                    <li><a href="management/neibuguanli/jienengjianpai"><i class="zmdi zmdi-dot-circle-alt"></i>节能减排</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=9&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>下载中心</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/xiazaizhongxin/changyongruanjian"><i class="zmdi zmdi-dot-circle-alt"></i>常用软件</a></li>--%>
<%--                    <li><a href="management/xiazaizhongxin/changjianruanjian"><i class="zmdi zmdi-dot-circle-alt"></i>常见表单</a></li>--%>
<%--                    <li><a href="management/xiazaizhongxin/meiwenxinshang"><i class="zmdi zmdi-dot-circle-alt"></i>美文欣赏</a></li>--%>
<%--                    <li><a href="management/xiazaizhongxin/shenhuochangshi"><i class="zmdi zmdi-dot-circle-alt"></i>生活常识</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=10&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>支行动态</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=11&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>一周安排</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=12&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>公告栏</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=13&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>信息排行</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=14&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>光荣榜</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=15&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>金融快讯</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=16&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>季度重点</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=17&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>为你服务</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/weinifuwu/zhibanricheng"><i class="zmdi zmdi-dot-circle-alt"></i>值班日程</a></li>--%>
<%--                    <li><a href="management/weinifuwu/zhihangdongtai"><i class="zmdi zmdi-dot-circle-alt"></i>支行动态</a></li>--%>
<%--                    <li><a href="management/weinifuwu/yizhoucaipu"><i class="zmdi zmdi-dot-circle-alt"></i>一周菜谱</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=18&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>群组路线活动</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/qunzhongluxianhuodong/zhongyangjishangjihangjingsheng"><i class="zmdi zmdi-dot-circle-alt"></i>中央及上级行精神</a></li>--%>
<%--                    <li><a href="management/qunzhongluxianhuodong/gongzuobushu"><i class="zmdi zmdi-dot-circle-alt"></i>工作部署</a></li>--%>
<%--                    <li><a href="management/qunzhongluxianhuodong/huodongdongtai"><i class="zmdi zmdi-dot-circle-alt"></i>活动动态</a></li>--%>
<%--                    <li><a href="management/qunzhongluxianhuodong/xuexiziliao"><i class="zmdi zmdi-dot-circle-alt"></i>学习资料</a></li>--%>
<%--                    <li><a href="management/qunzhongluxianhuodong/xuexijiaoliu"><i class="zmdi zmdi-dot-circle-alt"></i>学习交流</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=19&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>守纪律讲规矩</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/shoujilvjiangguiju/gongzuobushu"><i class="zmdi zmdi-dot-circle-alt"></i>工作部署</a></li>--%>
<%--                    <li><a href="management/shoujilvjiangguiju/huodongdongtai"><i class="zmdi zmdi-dot-circle-alt"></i>活动动态</a></li>--%>
<%--                    <li><a href="management/shoujilvjiangguiju/xuexiziliao"><i class="zmdi zmdi-dot-circle-alt"></i>学习资料</a></li>--%>
<%--                    <li><a href="management/shoujilvjiangguiju/xuexijiaoliu"><i class="zmdi zmdi-dot-circle-alt"></i>学习交流</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=20&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>两学一做</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
<%--                <ul class="sidebar-submenu">--%>
<%--                    <li><a href="management/liangxueyizuo/gongzuobushu"><i class="zmdi zmdi-dot-circle-alt"></i>工作部署</a></li>--%>
<%--                    <li><a href="management/liangxueyizuo/huodongdongtai"><i class="zmdi zmdi-dot-circle-alt"></i>活动动态</a></li>--%>
<%--                    <li><a href="management/liangxueyizuo/xuexiziliao"><i class="zmdi zmdi-dot-circle-alt"></i>学习资料</a></li>--%>
<%--                    <li><a href="management/liangxueyizuo/xuexijiaoliu"><i class="zmdi zmdi-dot-circle-alt"></i>学习交流</a></li>--%>
<%--                </ul>--%>
            </li>

            <li>
                <a href="display/displayfilepage?dir_1_index=21&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>图片新闻</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=22&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>行长信箱</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=23&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>廉政信箱</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=24&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>党员公开意见表</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=25&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>文章权限</span>
                </a>
            </li>

            <li>
                <a href="display/displaypage?dir_1_index=26&dir_2_index=1" class="waves-effect">
                    <i class="zmdi zmdi-lock"></i> <span>管理账户</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
                <ul class="sidebar-submenu">
                    <li><a href="index.jsp" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>我的管理</a></li>
                    <li><a href="management/addadmin" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>添加管理员</a></li>
                    <li><a href="management/editadmin" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>修改管理员</a></li>
                </ul>
            </li>
        </ul>

    </div>
    <!--End sidebar-wrapper-->

    <!--Start topbar header-->
    <header class="topbar-nav">
        <nav class="navbar navbar-expand fixed-top">
            <ul class="navbar-nav mr-auto align-items-center">
                <li class="nav-item">
                    <a class="nav-link toggle-menu" href="javascript:void();">
                        <i class="icon-menu menu-icon"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <form class="search-bar">
                        <input type="text" class="form-control" placeholder="搜索">
                        <a href="javascript:void();"><i class="icon-magnifier"></i></a>
                    </form>
                </li>
            </ul>

            <ul class="navbar-nav align-items-center right-nav-link">
                <li class="nav-item">
                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown" href="#">
                        <span class="user-profile"><img src="assets/images/avatars/avatar.png" class="img-circle" alt="user avatar"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item user-details">
                            <a href="javaScript:void();">
                                <div class="media">
                                    <div class="avatar"><img class="align-self-start mr-3" src="assets/images/avatars/avatar.png" alt="user avatar"></div>
                                    <div class="media-body">
                                        <h6 class="mt-2 user-title">test</h6>
<%--                                        <p class="user-subtitle">mccoy@example.com</p>--%>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-envelope mr-2"></i> Inbox</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-wallet mr-2"></i> Account</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-settings mr-2"></i> Setting</li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item"><i class="icon-power mr-2"></i> Logout</li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    <!--End topbar header-->


    <div class="clearfix"></div>

    <div class="content-wrapper">
        <div class="container-fluid">
            <!-- Breadcrumb-->
            <div class="row pt-2 pb-2">
                <div class="col-sm-9">
                    <h4 class="page-title">${dir_1}</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javaScript:void();">主页</a></li>
<%--                        <li class="breadcrumb-item"><a href="javaScript:void();"><%=dir_1%></a></li>--%>
                        <li class="breadcrumb-item active" aria-current="page">${dir_1}</li>
                    </ol>
                </div>
            </div>
            <!-- End Breadcrumb-->



            <c:forEach items="${return_list}" var="textData">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header text-uppercase">${textData.title}</div>
                            <div class="card-body">
                                <div class="carousel slide" data-ride="carousel">
                                    <div class="carousel-inner">
                                            ${textData.txtdata}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <!--start overlay-->
            <div class="overlay toggle-menu"></div>
            <!--end overlay-->

            <!--start overlay-->
            <div class="overlay toggle-menu"></div>
            <!--end overlay-->
        </div>

        <!-- End container-fluid-->

    </div><!--End content-wrapper-->

<%--    --%>
    <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->

    <!--Start footer-->
    <footer class="footer">
        <div class="container">
            <div class="text-center">
                Copyright © 2020 <a href="">Admin</a>
            </div>
        </div>
    </footer>
    <!--End footer-->


</div><!--End wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- simplebar js -->
<script src="assets/plugins/simplebar/js/simplebar.js"></script>
<!-- sidebar-menu js -->
<script src="assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="assets/js/app-script.js"></script>

<!--Data Tables js-->
<script src="assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
<script src="assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

<script>
    $(document).ready(function() {
        //Default data table
        $('#default-datatable').DataTable();


        var table = $('#example').DataTable( {
            lengthChange: false,
            buttons: [ 'copy', 'excel', 'pdf', 'print']
        } );

        table.buttons().container()
            .appendTo( '#example_wrapper .col-md-6:eq(0)' );

    } );

</script>

</body>
</html>

