<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addtype.aspx.cs" Inherits="SimpleBlog.dashboard.addtype" %>

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
        <h1>分类管理
        <small>维护文章分类</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>分类管理</a></li>
            <li class="active">新增分类</li>
        </ol>
    </section>

    <section class="content container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">新增分类</h3>
                    </div>
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

                        <div class="box-footer">
                            <asp:Button ID="addType" runat="server" Text="添加" OnClick="AddType_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</body>
</html>
