using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog.dashboard
{
    public partial class listuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string action = Request.QueryString["action"];
            string id = Request.QueryString["id"];
            DataBind();
        }
        private void DataBind()
        {
            this.userRpt.DataSource = UserListBLL.ShowUser();
            this.userRpt.DataBind();
        }
    }
}