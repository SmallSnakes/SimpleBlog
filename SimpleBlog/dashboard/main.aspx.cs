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
                Response.Redirect("login.aspx");
            }
            countBlog();
            countComment();
            countContact();
            //countType();
            countUser();

        }

       
        protected void countBlog()
        { 
            int count = MainInfoBLL.countBlog();
            this.blog.Text = count.ToString();
        }
        //protected void countType()
        //{
           
            
        //    int count = MainInfoBLL.countType();
           
        //    this.type.Text = count.ToString();
        //}

        protected void countUser()
        {
            
            int count = MainInfoBLL.countUser();
          
            this.user.Text = count.ToString();
        }

        protected void countComment()
        {
            
            int count = MainInfoBLL.countComment();
            this.comment.Text = count.ToString();
        }

        protected void countContact()
        {
            int count = MainInfoBLL.countContact();
            this.words.Text = count.ToString();
        }
    }
}