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
    public partial class adduser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        UserManageInfo info = new UserManageInfo();
        protected void AddUser_Click(object sender, EventArgs e)
        {
            info.userName = Request.Form["userName"];
            info.password = Request.Form["password"];

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
            //判断是否存在相同用户
            int returnNum = UserManageBLL.JudgeName(info);
            if (returnNum > 0)
            {
                Response.Write("<script>alert('用户名已经存在！！');</script>");
                return;
            }

            //插入数据库   
            int num = UserManageBLL.AddUser(info);
            if (num == -1)
            {
                Response.Write("<script>alert('添加失败！');</script>");
            }
            else
            {
                Response.Write("<script>alert('添加成功');</script>");
                
            }
        }
    }
}