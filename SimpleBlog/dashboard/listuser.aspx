<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listuser.aspx.cs" Inherits="SimpleBlog.dashboard.listuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户管理</title>
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
                <h1>用户管理
        <small>维护用户</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i>用户管理</a></li>
                    <li class="active">用户列表</li>
                </ol>
            </section>

            
            <section class="content container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">用户列表</h3>
                            </div>
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" AutoGenerateColumns="False"  OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" >
                                        <FooterStyle CssClass="GridViewFooterStyle" BorderStyle="Ridge" HorizontalAlign="Right" />
                                        <RowStyle CssClass="GridViewRowStyle" HorizontalAlign="Right" />   
                                        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
                                        <PagerSettings FirstPageText="首页" LastPageText="末页" Mode="NextPreviousFirstLast" NextPageText="下一页" PageButtonCount="6" PreviousPageText="上一页" />
                                        <PagerStyle CssClass="GridViewPagerStyle" BorderStyle="None" HorizontalAlign="Right" />
                                        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
                                        <HeaderStyle CssClass="GridViewHeaderStyle" />
                                        <Columns >
                                            <asp:BoundField DataField="编号" HeaderText="用户ID"  />
                                            <asp:BoundField DataField="用户名" HeaderText="用户姓名" />
                                            <asp:BoundField DataField="密码" HeaderText="密码" />
                                            <asp:CommandField EditText="修改密码" ShowEditButton="True" DeleteText="删除用户" ShowDeleteButton="True" />
                                        </Columns>                                   
                                    </asp:GridView>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
