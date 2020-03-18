using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MySql.Data.MySqlClient;

namespace SimpleBlog.dashboard
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Logindemo.aspx");
            }
            countAllBlog();
        }

        MainInfoBLL mainBLL = new MainInfoBLL();
        void countAllBlog()
        { 
            int count = mainBLL.MainInfo();
            this.blog.Text = count.ToString();
        }
    }
}