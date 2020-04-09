<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="typelist.aspx.cs" Inherits="SimpleBlog.dashboard.typelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>分类列表</title>
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
    <form id="form1" runat="server">
        <div>
            <section class="content-header">
                <h1>分类管理
        <small>维护文章分类</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>分类管理</a></li>
                    <li class="active">分类列表</li>
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
                                <h3 class="box-title">分类列表</h3>
                            </div>

                            
                                <table class="table table-striped table-hover table-bordered">
                                    <asp:Repeater ID="typeRpt" runat="server">
                                        <HeaderTemplate>
                                            <tr>
                                                <th>ID</th>
                                                <th>分类名称</th>
                                                <th>操作</th>
                                            </tr>
                                        </HeaderTemplate>

                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("id")%></td>
                                                <td><a href="edittype.aspx?id=<%#Eval("id")%>"><%#Eval("typeName")%></a></td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='edittype.aspx?id=<%#Eval("id")%>'" />编辑</button>
                                                    <button type="button" class="btn btn-danger" onclick="javascript:window.location.href='?action=delete&id=<%#Eval("id")%>'" />删除</button>
                                 
                                                </td>
                                            </tr>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                </table>

                            <div style="float:right">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <asp:HyperLink ID="first" runat="server" class="page-link" Text="首页"></asp:HyperLink>
                                    </li>
                                    <li class="page-item">
                                        <asp:HyperLink ID="previous" runat="server" class="page-link" Text="上一页"></asp:HyperLink>
                                    </li>
                                    <li class="page-item">
                                        <asp:HyperLink ID="next" runat="server" class="page-link" Text="下一页"></asp:HyperLink>
                                    </li>
                                    <li class="page-item">
                                        <asp:HyperLink ID="last" runat="server" class="page-link" Text="末页"></asp:HyperLink>
                                    </li>

                                </ul>
                                <ul class="pagination">
                                    <li class="page-item">
                                        <asp:Label ID="pageNO" runat="server" class="page-link"></asp:Label>
                                    </li>

                                </ul>
                            </div>
                            
                        </div>
                    </div>
                    <h3 align="center" style="color:red" >删除分类会将所属该分类的文章全部删除！</h3>
                    </div>
            </section>



        </div>
    </form>



    <!-- jQuery 3 -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
    </body>
</html>
