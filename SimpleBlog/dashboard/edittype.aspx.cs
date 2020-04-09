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
    public partial class edittype : System.Web.UI.Page
    {
        TypeEditInfo info = new TypeEditInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            info.id = Request.QueryString["id"];
            this.typeName.Text = TypeEditBLL.ShowName(info);
           
           
        }
        protected void EditType_Click(object sender, EventArgs e)
        {

            info.typeName = Request.Form["typeName"];
            int num = TypeEditBLL.EditType(info);
            if (num > 0)
            {
                Response.Write("<script>alert('更新成功！！');</script>");
                Response.Redirect("typelist.aspx");
            }
            else
            {
                Response.Write("<script>alert('更新失败！！');</script>");

            }
        }
    }
}