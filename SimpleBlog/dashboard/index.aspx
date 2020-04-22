<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SimpleBlog.dashboard.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />
     <link rel="stylesheet" href="../dist/css/skins/skin-blue.min.css" />
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <link rel='stylesheet' href='http://fonts.font.im/css?family=Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic' />
</head>
<body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
             <!-- Main Header -->
        <header class="main-header">

            <!-- Logo -->
            <a href="#" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>S</b>B</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Simlpe</b>Blog</span>
            </a>

            <!-- Header Navbar -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>
                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <!-- Menu toggle button -->
                            
                        </li>
                        <!-- /.messages-menu -->
                        <!-- Notifications Menu -->
                        <li class="dropdown notifications-menu">
                            <!-- Menu toggle button -->
                        </li>
                        <!-- Tasks Menu -->
                        <li class="dropdown tasks-menu">
                            <!-- Menu Toggle Button -->
                        </li>
                        <!-- User Account Menu -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="../dist/img/user1-128x128.jpg" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p>欢迎：
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </p>
                        <!-- Status -->
                        <a href="#"><i class="fa fa-circle text-success"></i>Online</a>
                    </div>
                </div>
                <!-- Sidebar Menu -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">导航菜单</li>
                    <!-- Optionally, you can add icons to the links -->
                    <li><a href="../index.aspx" target="_blank"><i class="fa fa-flag"></i><span>SimlpeBlog前台首页</span></a></li>
                    <li class="active"><a href="javascript:void(0);" class="mainMenu" data-src="main.aspx"><i class="fa fa-home"></i><span>主页</span></a></li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-file-text"></i><span>文章管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a class="mainMenu" data-src="addblog.aspx" href="javascript:void(0);">新增文章</a></li>
                            <li><a class="mainMenu" data-src="listblog.aspx" href="javascript:void(0);">文章列表</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-th-list"></i><span>分类管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a class="mainMenu" data-src="addtype.aspx" href="javascript:void(0);">新增分类</a></li>
                            <li><a class="mainMenu" data-src="listtype.aspx" href="javascript:void(0);">分类列表</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-comment-o"></i><span>评论管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">

                            <li><a class="mainMenu" data-src="listcomment.aspx" href="javascript:void(0);">评论列表</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#"><i class="fa fa-comments"></i><span>留言管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">

                            <li><a class="mainMenu" data-src="listcontact.aspx" href="javascript:void(0);">留言列表</a></li>
                        </ul>
                    </li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-user"></i><span>用户管理</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a class="mainMenu" data-src="adduser.aspx" href="javascript:void(0);">新增用户</a></li>
                            <li><a class="mainMenu" data-src="listuser.aspx" href="javascript:void(0);">用户列表</a></li>
                        </ul>
                    </li>

                    <li><a href="logout.aspx"><i class="fa fa-lock"></i><span>安全退出</span></a></li>
                </ul>
                <!-- /.sidebar-menu -->
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <iframe id="mainIframe" name="mainIframe" width="100%" scrolling="no" onload="this.height=100" frameborder="0" src="main.aspx"></iframe>
            <!-- /.content-wrapper -->
        </div>
        <!-- Main Footer -->
        <footer class="main-footer">
            <!-- To the right -->
            <div class="pull-right hidden-xs">
                 Anything you want
            </div>
            <!-- Default to the left -->
            <strong>Copyright &copy; 2020 <a href="#">by 帅气的阿伟</a>.</strong>
        </footer>

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark"> </aside>
        <!-- Add the sidebar's background.-->
        <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->
    <!-- jQuery 3 -->
    <script src="../Style/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>

    <script>
        //点击跳转到指定的详情页
        $('.mainMenu').click(function (event) {
            var address = $(this).attr("data-src");
            // console.log(address)
            $("#mainIframe").attr("src", address);
        });

        //控制中间main的大小
        function reinitIframe() {
            var iframe = document.getElementById("mainIframe");
            try {
                var bHeight = iframe.contentWindow.document.body.scrollHeight;
                var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
                var height = Math.max(bHeight, dHeight);
                iframe.height = height;
                console.log(height);
            } catch (ex) { }
        }
        window.setInterval("reinitIframe()", 200);
    </script> 
</body>
</html>
