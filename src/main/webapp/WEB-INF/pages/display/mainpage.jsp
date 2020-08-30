<%--
  Created by IntelliJ IDEA.
  User: liminhao
  Date: 8/25/20
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String tempTXT = "暂无";
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8" />
    <title>主页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <base href="<%=basePath%>">

    <link href="assets/css/mainpage_style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="assets/js/mainpage_js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/mainpage_js/jquery.SuperSlide.2.1.1.js"></script>
    <script type="text/javascript" src="assets/js/mainpage_js/myfocus-2.0.1.min.js"></script>
    <script type="text/javascript" src="assets/js/mainpage_js/flashstyle.js"></script>
    <script type="text/javascript" src="assets/js/mainpage_js/common.js"></script>
    <script>
        //flash设置
        myFocus.set({
            id:'NewsFocus',//ID默认不变
            pattern:'mF_YSlider',//风格
            time:'5'//切换时间间隔(秒)
        });
        $(function(){
            $(".pro_con").slide({mainCell:"ul",autoPlay:true,effect:"leftMarquee",vis:6,interTime:50});
        });
    </script>
    <meta http-equiv="mobile-agent" content="format=xhtml;url=./index.php">
    <script type="text/javascript">if(window.location.toString().indexOf('pref=padindex') != -1){}else{if(/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent))){if(window.location.href.indexOf("?mobile")<0){try{if(/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent)){window.location.href="./index.php";}else if(/iPad/i.test(navigator.userAgent)){}else{}}catch(e){}}}}</script>
    <!--[if lte IE 6]>
    <script src="assets/js/mainpage_js/png.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('*');
    </script>
    <![endif]-->

</head>
<body>

<!--头部开始-->
﻿<!--头部开始-->

<div class="block">
    <div id="head">
        <div id="logo"><a href="" title="银行首页"><img src="assets/mainpage_images/logo.jpeg" alt="银行首页" /></a></div>
        <div id="head_right">
            <div class="favorite">
                <ul>
                    <li><a href="/">返回首页</a>|</li>
                    <li><a href="javascript:void(0);" onclick="SetHome();">设为首页</a>|</li>
                    <li><a href="javascript:void(0);" onclick="AddFavorite();">加入收藏</a></li>
                </ul>
            </div>
            <div class="clear"></div>

<%--            <div id="search">--%>
<%--                <form name="searchform" method="post" action="">--%>
<%--                    <input name="q" type="text" class="skw" id="search-keyword" value="在这里搜索..." onfocus="if(this.value=='在这里搜索...'){this.value='';}"  onblur="if(this.value==''){this.value='在这里搜索...';}" />--%>
<%--                    <input name="submit" value="搜索" type="submit" class="sub" />--%>
<%--                </form>--%>
<%--            </div>--%>

        </div>
    </div>
    <div class="clear"></div>
    <div id="navigate">
        <ul>
            <li class="first_menu"><a  class='current'  href='display/mainpage'>首页</a></li>
            <li><a  href='display/displaypage?dir_1_index=2&dir_2_index=1'>党务公开</a></li>
            <li><a  href='display/displaypage?dir_1_index=1&dir_2_index=1'>政务公开</a></li>
            <li><a  href='display/displaypage?dir_1_index=4&dir_2_index=1'>信息调研&nbsp;</a></li>
            <li><a  href='display/displaypage?dir_1_index=7&dir_2_index=1'>反腐倡廉</a></li>
            <li><a  href='display/displaypage?dir_1_index=8&dir_2_index=1'>内部管理&nbsp;</a></li>
            <li><a  href='display/displaypicpage?dir_1_index=21&dir_2_index=1'>图片新闻</a></li>
            <li><a  href='display/displaypage?dir_1_index=18&dir_2_index=1'>群众路线活动</a></li>
        </ul>
    </div>
    <div class="clear"></div>
    <div id="flash">
        <div id="myFocus">
            <div class="loading"></div>
            <div class="pic">
                <ul>
                    <li><a href="#"><img src="assets/mainpage_images/bank.jpeg"/></a></li>
                    <li><a href="#"><img src="assets/mainpage_images/bank2.jpeg"/></a></li>
                </ul>
            </div>

        </div>
    </div>
</div>
<div class="clear"></div>
<!--内容区开始-->
<div class="block">
    <div id="main">
        <div class="home_list">
            <div class="home_left">
                <div class="home_top">
                    <h3>公告栏&nbsp;</h3>
                    <span><a href="">更多>></a></span> </div>
                <div class="home_con_left">
                    <div class="news_list">
                        <ul>
                            <c:forEach items="${list_12}" var="textData">
                                <li><a href=''>${textData.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="home_mid">
                <div id="NewsFocus">
                    <div class="pic">
                        <ul>
                            <c:forEach items="${pic_list}" var="picData" begin="0" end="2" step="1">
                                <li><a href=""><img src="assets/uploads/${picData.fileName}" alt="${picData.title}" text="${picData.title}" /></a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="home_right">
                <div class="home_top">
                    <h3>党务公开&nbsp;</h3>
                    <span><a href="display/displaypage?dir_1_index=2&dir_2_index=1">更多>></a></span> </div>
                <div class="home_con_right">
                    <div class="news_list">
                        <ul>
                            <c:forEach items="${list_2}" var="textData">
                                <li><span class='time'>${textData.time}</span><a href='' >${textData.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="home_list mt15">
            <div class="home_left">
                <div class="home_top">
                    <h3>政务公开</h3>
                    <span><a href="display/displaypage?dir_1_index=1&dir_2_index=1">更多>></a></span> </div>
                <div class="home_con_left">
                    <div class="news_list">
                        <ul>
                            <c:forEach items="${list_1}" var="textData">
                                <li><a href=''>${textData.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="home_mid">
                <div class="home_top">
                    <h3>信息调研</h3>
                    <span><a href="display/displaypage?dir_1_index=4&dir_2_index=1">更多>></a></span> </div>
                <div class="home_con_mid">
                    <div class="news_list">
                        <ul>
                            <c:forEach items="${list_4}" var="textData">
                                <li><span class='time'>${textData.time}</span><a href='' >${textData.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="home_right">
                <div class="home_top">
                    <h3>图片新闻</h3>
                    <span><a href="display/displaypicpage?dir_1_index=21&dir_2_index=1">更多>></a></span> </div>
                <div class="home_con_right">
                    <div class="news_list">
                        <ul>
                            <c:forEach items="${pic_list}" var="picData" begin="0" end="7" step="1">
                                <li><span class='time'>${picData.time}</span><a href='' >${picData.title}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="home_list mt15">
            <div class="pro_con">
                <ul>
                    <c:forEach items="${pic_list}" var="picData" begin="0" end="9" step="1">
                        <li><a href='' title='${picData.title}'><img src='assets/uploads/${picData.fileName}' alt='${picData.title}'></a><br />
                            <a href='' title='图片'>${picData.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="home_list mt15"></div>
        <div class="home_list mt15">
            <div class="link">
                <div class="link_top">
                    <h3>热门链接</h3>
                </div>
                <div class="link_txt">
                    <ul>
                        <li><a href='' target='_blank'>中国人民银行南京分行&nbsp;</a> </li>
                        <li><a href='www.baidu.com' target='_blank'>百度一下</a> </li>

                        <!--link start--> <!--link end-->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="clear"></div>
<div class="clear"></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="block">
    <div id="copyright">
        <div id="footnav">
            <ul>
                <li><a href='/'>首页</a></li>
                <li>|<a href='./about/'>关于我们</a></li>
                <li>|<a href='./Products/'>访问旧版&nbsp;</a></li>
                <li>|<a href='management/index'>管理入口&nbsp;</a></li>
                <li>|<a href='./Investment/'>帮助信息&nbsp;</a></li>
            </ul>
        </div>
        <div class="clear"></div>
        <div id="copy_txt">Copyright © 2020 丹阳分行测试1 All Rights Reserved.&nbsp;&nbsp;</div>
    </div>
</div>

<!--版权区结束-->
</body>

</html>
