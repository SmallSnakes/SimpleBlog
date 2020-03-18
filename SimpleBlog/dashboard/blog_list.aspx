<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="blog_list.aspx.cs" Inherits="SimpleBlog.dashboard.blog_list" %>

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
<body>
     <form id="form1" runat="server">
        <div>
            <section class="content-header">
                <h1>文章管理
        <small>维护文章</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>文章管理</a></li>
                    <li class="active">文章列表</li>
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
                                <h3 class="box-title">文章列表</h3>
                            </div>

                            <div class="container" style="margin-bottom:8px">
                                <div class="row" >
                                    <div class="col-md-6 ">
                                        <div class="col-xs-6 " >
                                            
                                            <input type="text" class="form-control" id="title" name="title" placeholder="文章标题" />
                                        </div>
                                        <div class="col-xs-6">
                                            <asp:Button ID="searchBlog" runat="server" Text="查询" OnClick="SearchBlog_Click" class="btn btn-primary" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped table-hover table-bordered">
                                <asp:Repeater ID="blogRpt" runat="server">
                                    <HeaderTemplate>
                                        <tr>
                                            <th>ID</th>
                                            <th>标题</th>
                                            <th>发布日期</th>
                                            <th>所属类别</th>
                                            <th>封面图片</th>
                                            <th>操作</th>
                                        </tr>
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("id")%></td>
                                            <td><a href="edit_blog.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a></td>
                                            <td><%#Eval("releaseDate","{0:yyyy-MM-dd HH:mm:ss}")%></td>
                                            <td><%#Eval("typeName")%></td>
                                            <td>
                                                <img src='<%#Eval("photo") %>' width="100" height="60" /></td>
                                            <td>

                                                <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='edit_blog.aspx?id=<%#Eval("id")%>'" />
                                                编辑</button>
                                                <a type="button" class="btn btn-success" href="../detail.aspx?id=<%#Eval("id")%>" target="_blank">预览</a>
                                                    <button type="button" class="btn btn-danger" onclick="javascript:window.location.href='?action=delete&id=<%#Eval("id")%>'" />
                                                删除</button>
                                                 
                                            </td>
                                        </tr>
                                    </ItemTemplate>

                                </asp:Repeater>

                            </table>

                            <div style="float: right">
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
                </div>
            </section>



        </div>
    </form>



    <!-- jQuery 3 -->
    <script src="../Style/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
</body>
</html>
