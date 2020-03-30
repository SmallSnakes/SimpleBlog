<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SimpleBlog.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="Style/css/ionicons.min.css">
	<link rel="stylesheet" type="text/css" href="res/css/main.css" />
	<form id="form1" runat="server" class="contact-form">
        <div class="content-body">
			<div class="container">
				<div class="row">
					<main class="col-md-12">
						<h1 class="page-title">Contact</h1>
						<article class="post">
							<div class="entry-content clearfix">
									<div class="row">
										<div class="col-md-6 col-md-offset-3">
											<input type="text" name="name" placeholder="Name" required>
											<input type="email" name="email" placeholder="Email" required>
											<textarea name="contents" rows="7" placeholder="Your Message" required></textarea>
											
											<asp:Button Text="Drop Me a Line" runat="server" class="btn-send btn-5 btn-5b ion-ios-paperplane" OnClick="AddContact_Click" />
											
										</div>
									</div>	<!-- row -->
							</div>
						</article>
					</main>
				</div>
			</div>
		</div>
	
	
	<div class="container">
		<div><h3>精选留言</h3></div>
            <div class="list-cont">
                 <asp:Repeater ID="wordsRpt" runat="server">
                       <ItemTemplate>
                              <div class="cont">
								  <table border="0">
									 <tr>
										<th><div class="img"><img src="res/img/NET.png" alt="" /></div></th>
										<th style="width:300px;padding-left:20px"> <h4> <%#Eval("contents")%></h4></th>
									  </tr>
									  <tr>
										<td style="padding-left:10px"><span class="name"><%#Eval("name")%></span></td>
										<td style="width:300px;padding-left:20px"><span class="data"><%#Eval("date","{0:yyyy-MM-dd HH:mm:ss}")%></span></td>
									  </tr>
								</table>
                                   <div style="height:40px;"></div>
                                       
                                    </div>
                         </ItemTemplate>
                  </asp:Repeater>
			 </div>
		</div>
 </form>         
</asp:Content>
