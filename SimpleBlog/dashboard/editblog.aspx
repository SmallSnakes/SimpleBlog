<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true"   CodeBehind="editblog.aspx.cs" Inherits="SimpleBlog.dashboard.editblog" %>

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
    <section class="content-header">
        <h1>文章管理
        <small>维护文章</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>文章管理</a></li>
            <li class="active">编辑文章</li>
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
                        <h3 class="box-title">编辑文章</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" runat="server" name="f1" enctype="multipart/form-data">
                        <div class="box-body">
                            <div class="form-group">
                                <label>标题</label>
                                <asp:TextBox ID="title" runat="server" class="form-control"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>摘要</label>
                                <textarea id="summary" runat="server" class="form-control" style="height: 100px;" name="summary"></textarea>

                            </div>
                            <div class="form-group">
                                <label>类别</label>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Font-Names="宋体" Font-Size="14px">
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label>发布日期</label>
                                <asp:TextBox ID="releaseDate" runat="server" class="form-control" Readonly="true"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>封面图片</label>
                                <div class="container">
                                    <div class="row">
                                        <asp:Image ID="pic" runat="server" Width="420px" Height="280px"/>
                                    </div>
                                </div>
            
                                <input type="file" class="form-control" id="photo" name="photo"  style="margin-top:5px" />
                            </div>
                            <div class="form-group">
                                <label>内容</label>
                                <textarea id="contents" runat="server" class="form-control" style="height: 300px;" name="contents"></textarea>
                            </div>

                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <asp:Button ID="editBlog" runat="server" Text="提交" OnClick="EditBlog_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->


    <!-- jQuery 3 -->
    <script src="../Style/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/adminlte.min.js"></script>
    <!-- layDate-->
    <script src="../Style/layDate/laydate/laydate.js"></script>
    <script src="../Style/kindeditor/kindeditor-all-min.js"></script>
    <script src="../Style/kindeditor/lang/zh-CN.js"></script>
    <script src="../Style/kindeditor/plugins/code/prettify.js"></script>
    <script>
        //执行一个laydate实例
        laydate.render({
            elem: '#releaseDate'//指定元素
            , type: 'datetime'
        });
        //KindEditor在线编辑器，下载直接调用
        KindEditor.ready(function (K) {
            var editor1 = K.create('#contents', {
                cssPath: '../Style/kindeditor/plugins/code/prettify.css',
                uploadJson: '../Style/kindeditor/asp.net/upload_json.ashx',
                fileManagerJson: '../Style/kindeditor/asp.net/file_manager_json.ashx',
                allowFileManager: true,
                afterCreate: function () {
                    var self = this;
                    K.ctrl(document, 13, function () {
                        self.sync();
                        K('form[name=f1]')[0].submit();
                    });
                    K.ctrl(self.edit.doc, 13, function () {
                        self.sync();
                        K('form[name=f1]')[0].submit();
                    });
                }
            });
            prettyPrint();
        });
    </script>
</body>
</html>
