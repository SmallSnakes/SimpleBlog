using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using MySql.Data.MySqlClient;

namespace SimpleBlog.dashboard
{
    public partial class LoginDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        UserInfo user = new UserInfo();
        UserInfoBLL userBll = new UserInfoBLL();
        public void Login_Click(object sender, EventArgs e)
        {
            user.userName = Request.Form["userName"];
            user.password = Request.Form["password"];
           
            if (String.IsNullOrEmpty(user.userName))
            {
                Response.Write("<script>alert('用户名不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(user.password))
            {
                Response.Write("<script>alert('密码不能为空！！');</script>");
                return;
            }

            UserInfo u = UserInfoBLL.Login(user);

            if (u != null)
            {
                if (u.password == user.password)
                {
                    
                    //保存登录数据，进入主界面
                    //Response.Write("<script>alert('成功！！');</script>");
                    Session["admin"] = user.userName;
                    Session.Timeout = 120;
                    Response.Redirect("index.aspx");

                }
                else Response.Write("<script>alert('登录失败，密码错误！！');</script>");
            }
            else Response.Write("<script>alert('用户名不存在！！');</script>");
            
        }
        //注册功能等最后有机会再写
        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('此功能开发中！！！');</script>");
        }
    }
}