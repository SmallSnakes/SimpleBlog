<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtype.aspx.cs" Inherits="SimpleBlog.dashboard.addtype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
<body>
    <section class="content-header">
        <h1>分类管理
        <small>维护文章分类</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>分类管理</a></li>
            <li class="active">新增分类</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">新增分类</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" runat="server">
                        <div class="box-body">
                            <div class="form-group">
                                <label>已有分类</label>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Font-Names="宋体" Font-Size="14px">
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label>分类名称</label>
                                <input type="text" class="form-control" id="typeName" name="typeName" placeholder="请输入分类名称" />
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <asp:Button ID="addType" runat="server" Text="添加" OnClick="AddType_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->

    <!-- jQuery 3 -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
</body>
</html>
