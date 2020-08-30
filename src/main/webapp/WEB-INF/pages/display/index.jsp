<%--
  Created by IntelliJ IDEA.
  User: liminhao
  Date: 8/24/20
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <base href="<%=basePath%>">
    <title>主页</title>
    <!--favicon-->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- animate CSS-->
    <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
    <!-- Icons CSS-->
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
    <!-- Custom Style-->
    <link href="assets/css/app-style.css" rel="stylesheet"/>

</head>

<body>


<!-- Start wrapper-->
<div id="wrapper">

    <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>

    <!--login box 1 -->

    <div class="mt-5">
        <div class="card card-authentication1 mx-auto">
            <div class="card-body">
                <div class="card-content">
                    <div class="text-center pb-4">
                        <img src="assets/images/logo-icon.png" width="120" height="120" alt="logo icon">
                        <h6 class="pb-0 pt-3 line-height-5">管理员登录</h6>
                        <small>进入管理界面</small>
                    </div>
                    <form action="${pageContext.request.contextPath}/display/login" method="post">
                        <div class="form-group">
                            <label for="input1" class="sr-only">用户名</label>
                            <div class="position-relative has-icon-right">
                                <input type="text" name="name" id="input1" class="form-control form-control-rounded" placeholder="用户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input2" class="sr-only">密码</label>
                            <div class="position-relative has-icon-right">
                                <input type="password" name="password" id="input2" class="form-control form-control-rounded" placeholder="密码">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-dark btn-block btn-round">登录</button>
                    </form>
                </div>
            </div>

        </div>
    </div>


    <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->


</div><!--wrapper-->

<!-- Bootstrap core JavaScript-->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- sidebar-menu js -->
<script src="assets/js/sidebar-menu.js"></script>

<!-- Custom scripts -->
<script src="assets/js/app-script.js"></script>

</body>
</html>

