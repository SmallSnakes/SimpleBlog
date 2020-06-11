<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listcomment.aspx.cs" Inherits="SimpleBlog.dashboard.listcomment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>评论列表</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />
    <link rel="stylesheet" href="../Style//css/gridview.css" />

  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="content-header">
                <h1>评论管理
        <small>维护文章评论</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>评论管理</a></li>
                    <li class="active">评论列表</li>
                </ol>
            </section>

            <section class="content container-fluid">

                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">评论列表</h3>
                           </div>
                            <div>
                            
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False"  OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging"  OnRowDataBound="GridView1_RowDataBound" PageSize="3"  >
                                        <FooterStyle CssClass="GridViewFooterStyle" BorderStyle="Ridge" HorizontalAlign="Right" />
                                        <RowStyle CssClass="GridViewRowStyle" HorizontalAlign="Right" />   
                                        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                                        <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PageButtonCount="6" PreviousPageText="上一页" />
                                        <PagerStyle CssClass="GridViewPagerStyle" BorderStyle="None" HorizontalAlign="Right" />
                                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                                        <Columns >
                                            <asp:BoundField DataField="id" HeaderText="用户ID"  />
                                            <asp:BoundField DataField="commentContents" HeaderText="评论内容" />
                                            <asp:BoundField DataField="commentDate" HeaderText="评论日期" />
                                            <asp:BoundField DataField="title" HeaderText="文章标题" />
                                            <asp:BoundField DataField="state" HeaderText="审核状态" ShowHeader="False" />
                                            <asp:CommandField EditText="审核" ShowEditButton="True" DeleteText="删除" ShowDeleteButton="True" HeaderText="操作列表" UpdateText="审核" />
                                        </Columns>                                   
                                    </asp:GridView>
                        </div>
                           
                                <%--<table class="table table-striped table-hover table-bordered">
                                    <asp:Repeater ID="commentRpt" runat="server">
                                        <HeaderTemplate>
                                            <tr>
                                                <th>ID</th>
                                                <th>评论内容</th>
                                                <th>评论时间</th>
                                                <th>文章标题</th>
                                                <th>审核状态</th>
                                                <th>操作</th>
                                            </tr>
                                        </HeaderTemplate>

                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("id")%></td>
                                                <td><%#Eval("commentContents")%></td>
                                                <td><%#Eval("commentDate","{0:yyyy-MM-dd HH:mm:ss}")%></td>
                                                <td><%#Eval("title")%></td>
                                                <td><%#Eval("state").ToString()=="1"?"<span class='label label-success'>已通过</span>":"<span class='label label-default'>未通过</span>"%></td>
                                                <td>
                                                    <button type="button" class="btn btn-primary" onclick="javascript:window.location.href='?action=check&id=<%#Eval("id")%>'" />审核</button>
                                                    <button type="button" class="btn btn-danger" onclick="javascript:window.location.href='?action=delete&id=<%#Eval("id")%>'" />删除</button>                                
                                                </td>
                                            </tr>
                                        </ItemTemplate>

                                    </asp:Repeater>

                                </table>                --%>      
                        </div>
                    </div>
                    </div>
            </section>
        </div>
    </form>
</body>
</html>
