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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
           
            string action = Request.QueryString["action"];
            string id = Request.QueryString["id"];
        }
        private void DataBind()
        {
            string sql = "select * from blog";
            sql = " SELECT  id,contents,name,email,date,state FROM words limit 10";

            //sql += " where id not in (select top ((" + (pageNumber - 1) + ") * " + pageSize + ") id  ";
            //sql += "   from [blog].[dbo].[words] order by date desc  )";
            //sql += " order by date desc";

            //this.wordsRpt.DataSource = ;
            this.wordsRpt.DataBind();


        }
    }
}