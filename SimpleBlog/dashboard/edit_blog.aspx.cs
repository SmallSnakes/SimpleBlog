using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using MySql.Data.MySqlClient;

namespace SimpleBlog.dashboard
{
    public partial class edit_blog : System.Web.UI.Page
    {

        BlogEditInfo editInfo = new BlogEditInfo();
        BlogEditBLL editBll = new BlogEditBLL();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!Page.IsPostBack)
            {
                show();
            }
            editInfo.id = Request.QueryString["id"];
            
            BlogEditInfo info = BlogEditBLL.ShowEditBlog(editInfo);
            this.title.Text = info.title;
            this.summary.Value = info.summary;
            this.DropDownList1.SelectedValue = info.DropDownList1;
            this.releaseDate.Text = info.releaseDate;
            this.contents.Value = info.contents;
            this.pic.ImageUrl = info.photo;
        
        }

        protected void show()
        {
            ArrayList ar = BlogEditBLL.ShowBlogType();
            DropDownList1.DataSource = ar;
            DropDownList1.DataBind();
        }

        protected void EditBlog_Click(object sender, EventArgs e)
        {
            editInfo.id = Request.QueryString["id"];
            editInfo.title = Request.Form["title"];
            editInfo.summary = Request.Form["summary"];
            editInfo.contents = Request.Unvalidated.Form["contents"];
            editInfo.releaseDate = Request.Form["releaseDate"];
            editInfo.typeName = Request.Form["DropDownList1"];

            HttpFileCollection files = Request.Files;
            string uploadPath = Server.MapPath("~/upload");
            string fileName = "";
            string filePath = "";
            string visitFilePath = "";
            editInfo.photo = "";
            if (files.Count > 0)
            {

                fileName = files[0].FileName;
                if (String.IsNullOrEmpty(fileName))
                {
                    editInfo.photo = pic.ImageUrl;

                }
                else
                {
                    if (!System.IO.Directory.Exists(uploadPath))
                    {
                        System.IO.Directory.CreateDirectory(uploadPath);
                    }
                    filePath = uploadPath + "/" + fileName;

                    visitFilePath = "/upload/" + fileName;
                    files[0].SaveAs(filePath);
                    editInfo.photo = visitFilePath;
                }
            }

            editInfo.typeId = 0;
            ArrayList ar = BlogEditBLL.ChoseBlogType(editInfo);
            editInfo.typeId = Convert.ToInt32(ar[0]);

            if (String.IsNullOrEmpty(editInfo.title))
            {
                Response.Write("<script>alert('文章标题不能为空！！');</script>");
                
                return;
            }
            if (String.IsNullOrEmpty(editInfo.summary))
            {
                Response.Write("<script>alert('文章摘要不能为空！！');</script>");
                
                return;
            }
            if (String.IsNullOrEmpty(editInfo.releaseDate))
            {
                Response.Write("<script>alert('发布日期不能为空！！');</script>");
                
                return;
            }
            if (String.IsNullOrEmpty(editInfo.contents))
            {
                Response.Write("<script>alert('文章内容不能为空！！');</script>");
               
                return;
            }

            int num = BlogEditBLL.UpdateBlog(editInfo);
            if (num > 0)
            {
                Response.Write("<script>alert('更新成功！！');</script>");
                Response.Redirect("blog_list.aspx");
            }
            else
            {
                Response.Write("<script>alert('更新失败！！');</script>");

            }
        }
    }

}