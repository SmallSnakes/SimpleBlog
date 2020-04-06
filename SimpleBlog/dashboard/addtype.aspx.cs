using BLL;
using Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog.dashboard
{
    public partial class addtype : System.Web.UI.Page
    {
        AddTypeInfo info = new AddTypeInfo();
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
        ArrayList arr = BlogAddBLL.ShowBlogType();
        public void show()
        {
            DropDownList1.DataSource = arr;
            DropDownList1.DataBind();

        }


        protected void AddType_Click(object sender, EventArgs e)
        {
            info.typeName = Request.Form["typeName"];
           
            string name = Request.Form["typeName"];
            if (String.IsNullOrEmpty(info.typeName))
            {
                Response.Write("<script>alert('分类名称不能为空！！');</script>");
                return;
            }
          
            //if (name.Equals(AddTypeBLL.JudgeName(info)))
            //{
            // Response.Write("<script>alert('分类名已经存在！！');</script>");
            // return;
            //    }

           
            
            int num = AddTypeBLL.AddType(info);
            if (num == -1)
            {
                Response.Write("<script>alert('添加失败！');</script>");
            }
            else
            {
                Response.Write("<script>alert('添加成功');</script>");
               
            }
           
            Response.Redirect(Request.Url.ToString());
        }
    }
}