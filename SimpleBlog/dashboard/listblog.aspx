<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listblog.aspx.cs" Inherits="SimpleBlog.dashboard.bloglist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>文章列表</title>
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

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

            <section class="content container-fluid">

                <div class="row">
                    <div class="col-md-12">
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
                                            <td><a href="editblog.aspx?id=<%#Eval("id")%>"><%#Eval("title")%></a></td>
                                            <td><%#Eval("releaseDate","{0:yyyy-MM-dd HH:mm:ss}")%></td>
                                            <td><%#Eval("typeName")%></td>
                                            <td>
                                                <img src='<%#Eval("photo") %>' width="100" height="60" /></td>
                                            <td>

                                                <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='editblog.aspx?id=<%#Eval("id")%>'" />
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




    <script src="../Style/jquery/dist/jquery.min.js"></script>
    <script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../dist/js/adminlte.min.js"></script>
</body>
</html>
