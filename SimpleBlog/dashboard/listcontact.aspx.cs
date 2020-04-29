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
    public partial class listcontact : System.Web.UI.Page
    {
        ContactManageInfo info = new ContactManageInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            info.action = Request.QueryString["action"];
            info.id = Request.QueryString["id"];
            //显示数据
            this.contactRpt.DataSource = ContactManageBLL.dataBind();
            this.contactRpt.DataBind();
            if ("delete".Equals(info.action))
            {
                if (ContactManageBLL.dataDel(info) > 0)
                {
                    Response.Write("<script>alert('删除成功！！');</script>");
                    Response.Redirect("listcontact.aspx");
                }
                else
                    Response.Write("<script>alert('删除失败！！');</script>");
            }
            if ("check".Equals(info.action))
            {
                if (ContactManageBLL.dataCheck(info) > 0)
                {
                    Response.Write("<script>alert('审核成功！！');</script>");
                    Response.Redirect("listcontact.aspx");
                }
                else
                {
                    Response.Write("<script>alert('审核失败！！');</script>");
                }
            }

        }
    }
}
       

       

           
   
      
