﻿<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="addblog.aspx.cs" Inherits="SimpleBlog.dashboard.addblog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>新增文章</title>
    <link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

  
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
    <section class="content container-fluid">

        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">新增文章</h3>
                    </div>
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

                        <div class="box-footer">
                            <asp:Button ID="addBlog" runat="server" Text="添加" OnClick="AddBlog_Click" class="btn btn-primary" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


    <script src="../Style/layDate/laydate/laydate.js"></script>
    <script src="../Style/kindeditor/kindeditor-all-min.js"></script>
    <script src="../Style/kindeditor/lang/zh-CN.js"></script>
    <script src="../Style/kindeditor/plugins/code/prettify.js"></script>
    <script>
        //执行一个laydate实例，在添加日期时候使用
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
