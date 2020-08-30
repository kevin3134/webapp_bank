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
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>后台管理</title>
    <base href="<%=basePath%>">

    <!--favicon-->
    <link rel="icon" href="assets/images/logo-icon.png" type="image/x-icon">
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
                    <li><a href="index.jsp"><i class="zmdi zmdi-dot-circle-alt"></i> 网站首页</a></li>
                    <li><a href="management/index"><i class="zmdi zmdi-dot-circle-alt"></i> 管理首页</a></li>
                </ul>
            </li>
            <li>
                <a href="javaScript:void();" class="waves-effect">
                    <i class="zmdi zmdi-lock"></i> <span>管理账户</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
                <ul class="sidebar-submenu">
                    <li><a href="index.jsp" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>我的管理</a></li>
                    <li><a href="index.jsp" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>添加管理员</a></li>
                    <li><a href="index.jsp" target="_blank"><i class="zmdi zmdi-dot-circle-alt"></i>修改管理员</a></li>
                </ul>
            </li>
            <li>
                <a href="javaScript:void();" class="waves-effect">
                    <i class="zmdi zmdi-format-list-bulleted"></i> <span>公告栏</span>
                </a>
            </li>

            <li>
                <a href="javaScript:void();" class="waves-effect">
                    <i class="zmdi zmdi-grid"></i> <span>数据库管理</span>
                    <i class="fa fa-angle-left float-right"></i>
                </a>
                <ul class="sidebar-submenu">
                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>支行动态</a></li>
                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>金融快讯</a></li>
                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>信息调研</a></li>
                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>党务公开</a></li>
                    <li><a href=""><i class="zmdi zmdi-dot-circle-alt"></i>政务公开</a></li>
                </ul>
            </li>

            <li>
                <a href="javaScript:void();" class="waves-effect">
                    <i class="zmdi zmdi-collection-folder-image"></i> <span>漂浮窗</span>
                </a>
            </li>


            <li>
                <a href="javaScript:void();" class="waves-effect">
                    <i class="zmdi zmdi-widgets"></i> <span>界面管理</span>
                </a>
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
                    <h4 class="page-title">后台管理</h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javaScript:void();">后台管理</a></li>
                        <li class="breadcrumb-item"><a href="javaScript:void();">数据库管理</a></li>
                        <li class="breadcrumb-item active" aria-current="page">支行动态</li>
                    </ol>
                </div>
            </div>
            <!-- End Breadcrumb-->


            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header"><i class="fa fa-table"></i>post列表</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="example" class="table table-bordered">
                                    <thead>
                                    <tr>
                                        <th>id</th>
                                        <th>内容</th>
                                        <th>时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>


                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>id</th>
                                        <th>内容</th>
                                        <th>时间</th>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- End Row-->
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

