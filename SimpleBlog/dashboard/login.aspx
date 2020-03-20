﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SimpleBlog.dashboard.login" %>

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

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <link rel='stylesheet' href='http://fonts.font.im/css?family=Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic' />
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
        <div>
            <div class="login-box">
                <div class="login-logo">
                    <a href="#"><b>SIMPLE</b>BlOG</a>
                </div>
                <!-- /.login-logo -->
                <div class="login-box-body">
                    <p class="login-box-msg">管理员登录</p>


                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="用户名" id="userName" name="userName" />
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" class="form-control" placeholder="密码" id="password" name="password" />
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>

                    <div class="row" style="margin-top: 30px">
                        <div class="col-xs-12">
                            <asp:Button ID="login" runat="server" Text="登陆" OnClick="Login_Click" class="btn btn-primary btn-block btn-flat" />
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px">
                        <div class="col-xs-12">
                            <asp:Button ID="register" runat="server" Text="注册" OnClick="Register_Click" class="btn btn-primary btn-block btn-flat" />
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery 3 -->
    <script src="../Style/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>