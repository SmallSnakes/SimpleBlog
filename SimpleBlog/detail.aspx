<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="SimpleBlog.detail" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" type="text/css" href="res/css/main.css" /> 
    <link rel="stylesheet" type="text/css" href="res/layui/css/layui.css" />
    <form id="form1" runat="server">
    <div class="content whisper-content leacots-content details-content">
                <div class="cont w1000">
                    <div class="whisper-list">
                        <div class="item-box">
                            <div class="review-version">
                                <div class="form-box">
                                    <asp:Repeater ID="blogDetailRpt" runat="server">
                                        <ItemTemplate>
                                            <div class="article-cont">
                                                <div class="title">
                                                    <h3><%#Eval("title")%></h3>
                                                    <p class="cont-info"><span class="data"><%#Eval("releaseDate","{0:yyyy-MM-dd HH:mm:ss}")%></span><span class="types"><%#Eval("typeName")%></span></p>

                                                </div>
                                                <p>
                                                    <%#Eval("contents")%>
                                                </p>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <div class="btn-box">
                                        <button class="layui-btn layui-btn-primary" style="width:300px;">
                                            <asp:HyperLink ID="previous" runat="server" Text="上一篇">

                                            </asp:HyperLink>

                                        </button>
                                        <button class="layui-btn layui-btn-primary" style="width:300px;">
                                            <asp:HyperLink ID="next" runat="server" Text="下一篇">
                                            </asp:HyperLink>
                                        </button>
                                    </div>
                                </div>


                                <div class="form" runat="server">
                                    <div class="layui-form-item layui-form-text">
                                        <div class="layui-input-block">
                                            <textarea name="desc"  id="desc" placeholder="Tell me your any suggestions"  class="layui-textarea"></textarea>
                                            
                                        </div>
                                    </div>
                                    <div class="layui-form-item">
                                        <div class="layui-input-block" style="text-align: right;">
                                            <asp:Button Text="确定" runat="server" class="layui-btn definite" OnClick="AddComment_Click" />

                                        </div>
                                    </div>
                                </div>


                                <div class="volume">
                                    精选评论    <span></span>
                                </div>
                                <div class="list-cont">
                                    <asp:Repeater ID="commentRpt" runat="server">
                                        <ItemTemplate>
                                            <div class="cont">
                                                <div class="img">
                                                    <img src="res/img/NET.png" alt="" />
                                                </div>
                                                <div class="text">
                                                    <p class="tit"><span class="name">热心网友</span><span class="data"><%#Eval("commentDate","{0:yyyy-MM-dd HH:mm:ss}")%></span></p>
                                                    <p class="ct">
                                                        <%#Eval("commentContents")%>
                                                    </p>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
   
</asp:Content>
