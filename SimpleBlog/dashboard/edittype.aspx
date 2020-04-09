<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edittype.aspx.cs" Inherits="SimpleBlog.dashboard.edittype" %>

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
            <li class="active">编辑分类</li>
        </ol>
    </section>

    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">编辑分类</h3>
                    </div>
                    <form role="form" runat="server">
                        <div class="box-body">

                            <div class="form-group">
                                <label>分类名称</label>
                                <asp:TextBox ID="typeName" runat="server" class="form-control"></asp:TextBox>

                            </div>
                        </div>
                        <div class="box-footer">
                            <asp:Button ID="editType" runat="server" Text="提交" OnClick="EditType_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
