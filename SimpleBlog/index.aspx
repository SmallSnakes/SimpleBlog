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
                <div >
                    <h3 class="widget-title">关于我</h3>
                    <div style="padding-left:0px;"><img src="res/img/wy_img6.png" /></div>
                    <div style="height:30px;text-align:center;padding-top:10px;">直道相思了无益，未妨惆怅是轻狂。</div>
                    <div style="text-align:center;font-size:14px;font-weight:bolder;">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="#">ID:帅帅的阿伟</a>
                        </li>
                        <li>
                            <a href="#">访问量:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
                        </li>
                         <li>
                            <a href="#">留言:999+</a>
                        </li>
                        
                          <li>
                            当前在线人数:<asp:Label ID="Label2" runat="server" Text="Label" style="margin-top:-25px"></asp:Label>
                        </li>
                        <li style="margin-left:30px;">
                           Test:Test
                        </li>
                        <li style="margin-left:30px;">
                             QQ: 1530692952
                        </li>
                    </ul>
                    </div>
                </div>
                <div class="widget widget-archives" style="padding-top:90px;">
                    <h3 class="widget-title">归档</h3>
                    <ul>
                        <li>
                            <a href="#">2017 年 5 月</a>
                        </li>
                        <li>
                            <a href="#">2017 年 4 月</a>
                        </li>
                        
                    </ul>
                </div>

                <%--分类，这部分暂时写死了--%>
                <div class="widget widget-category">
                    <h3 class="widget-title">分类</h3>
                    <ul>
                        <li>
                            <a href="#">技术 <span class="post-count">(13)</span></a>
                        </li>
                        <li>
                            <a href="#">情感 <span class="post-count">(11)</span></a>
                        </li>
                        <li>
                            <a href="#">游戏 <span class="post-count">(8)</span></a>
                        </li>
                    </ul>
                </div>

                <div class="widget widget-tag-cloud">
                    <h3 class="widget-title">标签云</h3>
                    <ul>
                        <li>
                            <a href="#">Docker</a>
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
                    <a href="#"><span class="ion-social-rss-outline"></span> 来点音乐？</a>
                    <%--音乐播放器--%>
                    <iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=280 height=86 src="//music.163.com/outchain/player?type=2&id=515888361&auto=0&height=66">  </iframe>
                </div>

                 
            </aside>
           
           </div>
    </div>
</div>
</form>
<!--动态线条背景-->
<script type="text/javascript" color="220,220,220" opacity='1.0' zIndex="-1" count="200" src="//cdn.bootcss.com/canvas-nest.js/1.0.0/canvas-nest.min.js"> </script>
    
</asp:Content>

