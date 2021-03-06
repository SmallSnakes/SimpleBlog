﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Collections;

namespace SimpleBlog.dashboard
{
    public partial class addblog : System.Web.UI.Page
    {
        BlogAddInfo addInfo = new BlogAddInfo();
        BlogAddBLL addBll = new BlogAddBLL();
        
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
        }

        //显示添加博客页面所有的博客类型选项
        ArrayList ar = BlogAddBLL.ShowBlogType();
        protected void show()
        {
            DropDownList1.DataSource = ar;
            DropDownList1.DataBind();

        }

        protected void AddBlog_Click(object sender, EventArgs e)
        {
            addInfo.title = Request.Form["title"];
            addInfo.summary = Request.Form["summary"];
            addInfo.contents = Request.Form["contents"];
            addInfo.releaseDate = Request.Form["releaseDate"];
            addInfo.typeName = Request.Form["DropDownList1"];
            HttpFileCollection files = Request.Files;
            //上传文件的保存路径
            string uploadPath = Server.MapPath("~/upload");
            string fileName = "";
            string filePath = "";
            string visitFilePath = "";

            if (files.Count > 0)
            {
                fileName = files[0].FileName;
                //文件名称为空
                if (String.IsNullOrEmpty(fileName))
                {
                    Response.Write("<script>alert('请选择封片图片！！');</script>");
                    return;
                }
                //如果目录不存在，就创建
                if (!System.IO.Directory.Exists(uploadPath))
                {
                    System.IO.Directory.CreateDirectory(uploadPath);
                }
                filePath = uploadPath + "/" + fileName;
                visitFilePath = "/upload/" + fileName;
                files[0].SaveAs(filePath);
            }
            addInfo.photo = visitFilePath;
            addInfo.typeId = 0;
            ArrayList ar = BlogAddBLL.ChoseBlogType(addInfo);
            addInfo.typeId = Convert.ToInt32(ar[0]);

            if (String.IsNullOrEmpty(addInfo.title))
            {
                Response.Write("<script>alert('文章标题不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(addInfo.summary))
            {
                Response.Write("<script>alert('文章摘要不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(addInfo.releaseDate))
            {
                Response.Write("<script>alert('发布日期不能为空！！');</script>");
                return;
            }

            if (String.IsNullOrEmpty(addInfo.contents))
            {
                Response.Write("<script>alert('文章内容不能为空！！');</script>");
                return;
            }

            //返回添加信息
            int num = addBll.AddBlog(addInfo);
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