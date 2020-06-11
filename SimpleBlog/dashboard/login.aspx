<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SimpleBlog.dashboard.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" href="../Style/bootstrap/dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../Style/font-awesome/css/font-awesome.min.css" />
		<link rel="stylesheet" href="../Style/Ionicons/css/ionicons.min.css" />
		<link rel="stylesheet" href="../dist/css/AdminLTE.min.css" />

		
	</head>
	<body class="hold-transition login-page">
		
		<form id="form1" runat="server">
			<div>
				<div class="login-box">
					<div class="login-logo">
						<a href="#"><b>SIMPLE</b>BlOG</a>
					</div>
					<!-- /.login-logo -->
					<div class="login-box-body">
						<p class="login-box-msg">Login In</p>


						<div class="form-group has-feedback">
							
							<asp:TextBox ID="userName" runat="server"  class="form-control" placeholder="用户名"  name="userName"></asp:TextBox>

							<span class="glyphicon glyphicon-user form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<asp:TextBox ID="password" runat="server" type="password" class="form-control" placeholder="密码" name="password" ></asp:TextBox>
							<span class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<%-- <div class="row">
                          <div class="col-8">
                            <div class="icheck-primary">
                              <input type="checkbox" id="remember" />
                              <label for="remember">
                                Remember Me
                          </label>
                        </div>
                      </div>--%>
						<div class="row" style="margin-top: 30px">

							<div class="col-xs-12">
								<asp:Button ID="login" runat="server" Text="登陆" OnClick="Login_Click" class="btn btn-primary btn-block btn-flat" />
							</div>
						</div>

						<div class="row" style="margin-top: 10px">
							<div class="col-xs-12">
								<asp:Button ID="register" runat="server" Text="注册" OnClick="Register_Click" class="btn btn-primary btn-block btn-flat" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- jQuery 3 -->
		<script src="../Style/jquery/dist/jquery.min.js"></script>
		<!-- Bootstrap 3.3.7 -->
		<script src="../Style/bootstrap/dist/js/bootstrap.min.js"></script>
	</body>
</html>
