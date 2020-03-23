<%@ Page Title="SimpleBlog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SimpleBlog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="banner">
        <div class="cont w1000">
            <div class="title">
                <h4>Hello,World</h4>
            </div>
        </div>
    </div>

    <div class="content">
        <div class="cont w1000">
            <div class="title">
                <span class="layui-breadcrumb" lay-separator="|">
                    <a href="javascript:;" class="active">全部文章</a>

                </span>
            </div>
            <div class="list-item">
                 <asp:Repeater ID="blogList" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <div class="layui-fluid">
                                <div class="layui-row">
                                    <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                                        <div class="img">
                                            <img src="<%#Eval("photo")%>" alt="" />
                                        </div>
                                    </div>
                                    <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                                        <div class="item-cont">
                                            <h3><a href="detail.aspx?id=<%#Eval("id")%>" target="_blank"><%#Eval("title")%></a></h3>

                                            <h5><%#Eval("typeName")%> <%#Eval("releaseDate","{0:yyyy-MM-dd HH:mm:ss}")%></h5>

                                            <p><%#Eval("summary").ToString().Length>60?Eval("summary").ToString().Substring(0,60)+"..":Eval("summary") %> </p>
                                            <a href="detail.aspx?id=<%#Eval("id")%>" target="_blank" class="go-icon">查看更多</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>
                </asp:Repeater>
         </div>
            <div style="text-align: center;">
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
   <%-- 背景插件--%> 
    <script color="0,0,0" opacity="0.5" count="99" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js" type="text/javascript" charset="utf-8"></script>
    <%--天气控件--%>
    <script type="text/javascript" src="res/layui/layui.js"></script>
    <script type="text/javascript">
        layui.config({
            base: 'res/js/util/'
        }).use(['element', 'laypage', 'jquery', 'menu'], function () {
            element = layui.element, laypage = layui.laypage, $ = layui.$, menu = layui.menu;
            menu.init();
        })
    </script>
  <%--  深色模式--%>
    <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
    <script> new Darkmode().showWidget();</script>
</asp:Content>
