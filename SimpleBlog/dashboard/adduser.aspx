<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adduser.aspx.cs" Inherits="SimpleBlog.dashboard.adduser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

   </head>
<body>
    <section class="content-header">
        <h1>用户管理
        <small>维护用户</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>用户管理</a></li>
            <li class="active">新增用户</li>
        </ol>
    </section>
     <section class="content container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">新增用户</h3>
                    </div>
                    <form role="form" runat="server">
                        <div class="box-body">
                            <div class="form-group">
                                <label>用户名</label>
                                <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名" />
                            </div>
                            <div class="form-group">
                                <label>密码</label>
                                <input type="text" class="form-control" id="password" name="password" placeholder="请输入密码" />
                            </div>
                        </div>
                        <div class="box-footer">
                            <asp:Button ID="addUser" runat="server" Text="添加" OnClick="AddUser_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
