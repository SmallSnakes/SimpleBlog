<%@ Page Title="SimpleBlog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SimpleBlog._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<form id="form1" runat="server">
<div class="content-body">
    <div class="container">
        <div class="row">
            <main class="col-md-8">
                 <asp:Repeater ID="blogList" runat="server">
                    <ItemTemplate>
                        <article class="post post-1">
                            <header class="entry-header">
                                <h1 class="entry-title">
                                    <a href="detail.aspx?id=<%#Eval("id")%>" target="_blank"><%#Eval("title")%></a
                                </h1>
                                <div class="entry-meta">
                                    <span class="post-category"><a href="#"><%#Eval("typeName")%> </a></span>
                                    <span class="post-date"><a href="#"><%#Eval("releaseDate","{0:yyyy-MM-dd HH:mm:ss}")%></a></span>
                                    <span class="post-author"><a href="#">admin</a></span>
                                    <span class="comments-link"><a href="#">0 评论</a></span>
                                    <span class="views-count"><a href="#">0 阅读</a></span>
                                </div>
                            </header>
                             
                                       <%-- <div class="img">
                                            <img src="<%#Eval("photo")%>" alt="" />
                                        </div>
                                    --%>
                            <div class="entry-content clearfix">
                                <p><%#Eval("summary").ToString().Length>120?Eval("summary").ToString().Substring(0,120)+"..":Eval("summary") %> </p>
                                <div class="read-more cl-effect-14">
                                    <a href="detail.aspx?id=<%#Eval("id")%>" target="_blank" class="more-link">继续阅读 <span class="meta-nav">→</span></a>
                                </div>
                            </div>
                        </article>
                      </ItemTemplate>
                   </asp:Repeater>
               

                <%--分页功能--%>
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
            </main>

          <%--  最新文章--%>
            <aside class="col-md-4">
                <div class="widget widget-recent-posts">
                    <h3 class="widget-title">最新文章</h3>
                    <ul>
                        <li>
                            <a href="#">Django 博客开发入门教程：前言</a>
                        </li>
                        <li>
                            <a href="#">Django 博客使用 Markdown 自动生成文章目录</a>
                        </li>
                        <li>
                            <a href="#">部署 Django 博客</a>
                        </li>
                    </ul>
                </div>
                <div class="widget widget-archives">
                    <h3 class="widget-title">归档</h3>
                    <ul>
                        <li>
                            <a href="#">2017 年 5 月</a>
                        </li>
                        <li>
                            <a href="#">2017 年 4 月</a>
                        </li>
                        <li>
                            <a href="#">2017 年 3 月</a>
                        </li>
                    </ul>
                </div>

                <%--分类--%>
                <div class="widget widget-category">
                    <h3 class="widget-title">分类</h3>
                    <ul>
                        <li>
                            <a href="#">Django 博客教程 <span class="post-count">(13)</span></a>
                        </li>
                        <li>
                            <a href="#">Python 教程 <span class="post-count">(11)</span></a>
                        </li>
                        <li>
                            <a href="#">Django 用户认证 <span class="post-count">(8)</span></a>
                        </li>
                    </ul>
                </div>

                <div class="widget widget-tag-cloud">
                    <h3 class="widget-title">标签云</h3>
                    <ul>
                        <li>
                            <a href="#">Python</a>
                        </li>
                        <li>
                            <a href="#">Java</a>
                        </li>
                        <li>
                            <a href="#">笔记</a>
                        </li>
                        <li>
                            <a href="#">文档</a>
                        </li>
                        <li>
                            <a href="#">CSS</a>
                        </li>
                        <li>
                            <a href="#">JavaScript</a>
                        </li>
                        <li>
                            <a href="#">情感</a>
                        </li>
                        <li>
                            <a href="#">asp.net</a>
                        </li>
                    </ul>
                </div>
                <div class="rss">
                    <a href=""><span class="ion-social-rss-outline"></span> RSS 订阅</a>
                </div>
            </aside>
        </div>
    </div>
</div>
 </form>   
    <%-- 背景插件--%> 
    <script color="0,0,0" opacity="0.5" count="99" src="https://cdn.bootcss.com/canvas-nest.js/1.0.1/canvas-nest.js" type="text/javascript" charset="utf-8"></script>

  
</asp:Content>
