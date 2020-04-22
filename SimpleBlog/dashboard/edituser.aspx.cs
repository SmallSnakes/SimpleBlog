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
    public partial class edituser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            info.id = Request.QueryString["id"];
            
            ShowEditUser();


        }
        UserManageInfo info = new UserManageInfo();
        //修改密码
        protected void EditUser_Click(object sender, EventArgs e)
        {
            info.pass = Request.Form["password"];
            int returnNum = UserManageBLL.EditUser(info);
            if (returnNum > 0)
            {
                Response.Write("<script>alert('更新成功！！');</script>");
                Response.Redirect("listuser.aspx");
            }
            else
            {
                Response.Write("<script>alert('更新失败！！');</script>");

            }
        }
        //显示要编辑的用户信息
        protected void ShowEditUser() {
            List<string> list = UserManageBLL.ShowEditUser(info);
            this.userName.Text = list[0];
            this.password.Text = list[1];
        }
    }
}