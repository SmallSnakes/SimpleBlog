<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="add_blog.aspx.cs" Inherits="SimpleBlog.dashboard.add_blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增文章</title>
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
            <li class="active">新增文章</li>
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
                        <h3 class="box-title">新增文章</h3>
                    </div>
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" runat="server" name="f1" enctype="multipart/form-data">
                        <div class="box-body">

                            <div class="form-group">
                                <label>标题</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="请输入文章标题" />
                            </div>
                            <div class="form-group">
                                <label>摘要</label>
                                <textarea  class="form-control" id="summary" name="summary" style="height: 100px;"></textarea>
                            </div>

                            <div class="form-group">
                                <label>类别</label>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Font-Names="宋体" Font-Size="14px">
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label>发布日期</label>
                                <input type="text" class="form-control" id="releaseDate" name="releaseDate" placeholder="请选择发布日期" readonly="readonly"/>
                            </div>

                            <div class="form-group">
                                <label>封面图片</label>
                                <input type="file" class="form-control" id="photo"  name="photo" />
                            </div>

                            <div class="form-group">
                                <label>内容</label>
                                <textarea id="contents" class="form-control" style="height: 300px;" name="contents"></textarea>
                            </div>
                        </div>
                        <!-- /.box-body -->

                        <div class="box-footer">
                            <asp:Button ID="addBlog" runat="server" Text="添加" OnClick="AddBlog_Click" class="btn btn-primary" />
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
