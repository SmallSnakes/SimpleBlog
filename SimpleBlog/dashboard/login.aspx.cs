using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog.dashboard
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              if(Request.Cookies["adminCook"].Value != "")
                userName.Text = Request.Cookies["adminCook"].Value.ToString();
            }
           
            
           
        }
        UserInfo info = new UserInfo();
        UserInfoBLL userBll = new UserInfoBLL();
        public void Login_Click(object sender, EventArgs e)
        {
            info.userName = userName.Text.Trim();
            info.password = password.Text;

            if (String.IsNullOrEmpty(info.userName))
            {
                Response.Write("<script>alert('用户名不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(info.password))
            {
                Response.Write("<script>alert('密码不能为空！！');</script>");
                return;
            }

            UserInfo u = UserInfoBLL.Login(info);

            if (u != null)
            {
                if (u.password == info.password)
                {

                    //保存登录数据，进入主界面
                    //Response.Write("<script>alert('成功！！');</script>");
                    Session["admin"] = info.userName;
                    Session.Timeout = 120;
                    Response.Cookies["adminCook"].Value = info.userName;
                    Response.Cookies["adminCook"].Expires = DateTime.Now.AddYears(1);
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