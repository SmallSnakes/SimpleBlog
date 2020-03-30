using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog
{
    public partial class contact : System.Web.UI.Page
    {
        ContactInfo info = new ContactInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBind();
        }
        protected void AddContact_Click(object sender, EventArgs e)
        {
            info.name = Request.Form["name"];
            info.email = Request.Form["email"];
            info.contents = Request.Form["contents"];
            info.date = DateTime.Now.ToString();
           
            if (String.IsNullOrEmpty(info.name))
            {
                Response.Write("<script>alert('姓名不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(info.email))
            {
                Response.Write("<script>alert('邮箱不能为空！！');</script>");
                return;
            }
            if (String.IsNullOrEmpty(info.contents))
            {
                Response.Write("<script>alert('留言内容不能为空！！');</script>");
                return;
            }

            int num = ContactInfoBLL.addContact(info);
            if (num == -1)
            {
                Response.Write("<script>alert('留言失败！');</script>");
            }
            else
            {
                Response.Write("<script>alert('留言成功,等待审核！');</script>");
               
            }
           
        }

        private void DataBind()
        {
            this.wordsRpt.DataSource = ContactInfoBLL.DataBind();
            this.wordsRpt.DataBind();
        }
    }
}