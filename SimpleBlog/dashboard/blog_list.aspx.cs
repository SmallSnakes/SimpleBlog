using BLL;
using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog.dashboard
{
    public partial class blog_list : System.Web.UI.Page
    {
        BlogListInfo info = new BlogListInfo();
        BlogListBLL listBll = new BlogListBLL();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            Paging();
            string action = Request.QueryString["action"];
            info.id = Request.QueryString["id"];

            //删除
            if ("delete".Equals(action))
            {
                
                int c = DataDelete();
                if (c > 0)
                {
                    Response.Write("<script>alert('删除成功！！');</script>");
                }
                else
                {
                    Response.Write("<script>alert('删除失败！！');</script>");
                }
            }
            DataBind();
        } 
        
        //换页功能
        private void Paging()
        {
            int count = BlogListBLL.Paging();

            info.pageSize = 10;
            if (Request.QueryString["number"] != null)
            {
                info.pageNumber = Int32.Parse(Request.QueryString["number"]);
            }
            else
            {
                info.pageNumber = 1;
            }

            int amount = 0;
            if (count % info.pageSize == 0)
            {
                amount = count / info.pageSize;
            }
            else
            {
                amount = count / info.pageSize + 1;
            }
            this.first.NavigateUrl = "?number=1";
            this.previous.NavigateUrl = "?number=" + (info.pageNumber - 1);
            this.next.NavigateUrl = "?number=" + (info.pageNumber + 1);
            this.last.NavigateUrl = "?number=" + amount;
            if (info.pageNumber == 1)
            {
                this.previous.Enabled = false;
                this.first.Enabled = false;

                this.previous.CssClass = "page-link active";
                this.first.CssClass = "page-link active";
            }
            else if (info.pageNumber == amount)
            {
                this.next.Enabled = false;
                this.last.Enabled = false;
                this.next.CssClass = "page-link active";
                this.last.CssClass = "page-link active";
            }
            this.pageNO.Text = "当前第" + info.pageNumber + "页";

        }

        private new void DataBind()
        {
            this.blogRpt.DataSource = BlogListBLL.DataBind(info);
            this.blogRpt.DataBind();
          }

        private void DataBindSearch()
        {
            this.blogRpt.DataSource = BlogListBLL.SearchBlog(info);
            this.blogRpt.DataBind();

        }
        private int DataDelete()
        {
            int count = BlogListBLL.DelBlog(info);
            return count;
        }

        protected void SearchBlog_Click(object sender, EventArgs e)
        {
             info.title = Request.Form["title"];
            if (String.IsNullOrEmpty(info.title))
            {
                Paging();
                DataBind();
            }
            else
            {
                Paging();
                DataBindSearch();
            }
        }
    }
  
}
