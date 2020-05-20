<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="SimpleBlog.dashboard.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <link rel='stylesheet' href='http://fonts.font.im/css?family=Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic' />
</head>
<body>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>后台主页
        <small>主页</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>主页</a></li>
            <li class="active">控制台</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- Small boxes (Stat box) -->
        <div class="container-fluid">
            <div class="row">
                <div class="callout callout-info">
                    <h4>当前系统时间</h4>

                    <h4 id="current-time"></h4>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="blog" /></h3>

                        <p>文章总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-document"></i>
                    </div>
                    <a href="listblog.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="type" /></h3>

                        <p>分类总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="listtype.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="user" /></h3>

                        <p>用户总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person"></i>
                    </div>
                    <a href="listuser.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="comment" /></h3>

                        <p>评论总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-pricetag"></i>
                    </div>
                    <a href="listcomment.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-purple">
                    <div class="inner">
                        <h3>
                            <asp:Label Text="text" runat="server" ID="words" /></h3>

                        <p>留言总数</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-chatbubbles"></i>
                    </div>
                    <a href="listcontact.aspx" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div>
    </section>



    <!-- jQuery 3 -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
    <script>
        
        function run() {
            var today;

            today = new Date();

            var week = "星期" + "日一二三四五六".charAt(new Date().getDay());

            document.getElementById("current-time").innerHTML ="今天是" + today.getFullYear() + "年"

                + (today.getMonth() + 1) + "月" + today.getDate() + "日"+ " " + week + " " +
                + today.getHours() + "时" + today.getMinutes() + "分" + today.getSeconds() + "秒";

            setTimeout('run()', 1000);
        }
        run();
    </script>
</body>
</html>
