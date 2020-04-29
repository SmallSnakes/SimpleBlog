<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="listcontact.aspx.cs" Inherits="SimpleBlog.dashboard.listcontact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言管理</title>
     <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
     <link rel='stylesheet' href='http://fonts.font.im/css?family=Source+Sans+Pro:400,300,600,700,300italic,400italic,600italic' />
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <section class="content-header">
                <h1>留言管理
        <small>维护留言</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>留言管理</a></li>
                    <li class="active">留言列表</li>
                </ol>
            </section>

            <section class="content container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">留言列表</h3>
                            </div>


                            <table class="table table-striped table-hover table-bordered">
                                <asp:Repeater ID="contactRpt" runat="server">
                                    <HeaderTemplate>
                                        <tr>
                                            <th>ID</th>
                                            <th>姓名</th>
                                            <th>邮箱</th>
                                            <th>留言内容</th>
                                            <th>留言时间</th>
                                            <th>审核状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("id")%></td>
                                            <td><%#Eval("name")%></td>
                                            <td><%#Eval("email")%></td>
                                            <td><%#Eval("contents")%></td>
                                            <td><%#Eval("date","{0:yyyy-MM-dd HH:mm:ss}")%></td>
                                            <td><%#Eval("state").ToString()=="1"?"<span class='label label-success'>已通过</span>":"<span class='label label-default'>未通过</span>"%></td>
                                            
                                            <td>
                                                <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='?action=check&id=<%#Eval("id")%>'" />
                                                审核</button>
                                                    <button type="button" class="btn btn-danger" onclick="javascript:window.location.href='?action=delete&id=<%#Eval("id")%>'" />
                                                删除</button>
                                                   
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                    
                            <%--<div style="float: right">
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
                            </div>--%>
                        </div>
                    </div>
                </div>

            </section>
        </div>
       </form>
</body>
</html>
