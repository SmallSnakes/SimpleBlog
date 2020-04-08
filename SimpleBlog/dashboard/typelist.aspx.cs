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
    public partial class typelist : System.Web.UI.Page
    {

        TypeListInfo info = new TypeListInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            Paging();
            DataBind();
            info.action = Request.QueryString["action"];
            info.id = Request.QueryString["id"];

            if ("delete".Equals(info.action))
            {
                //删除
                int count = TypeListBLL.DelType(info);
                if (count > 0)
                {
                    Response.Write("<script>alert('删除成功！！');</script>");
                    //Response.Write("< script language = javascript > window.location.href = document.URL;</ script > " ); 

                }
                else
                {
                    Response.Write("<script>alert('删除失败！！');</script>");
                }
                
            }
           

        }

        public void Paging()
        {
            int count = TypeListBLL.Paging();

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
            this.typeRpt.DataSource = TypeListBLL.DataBind(info);
            this.typeRpt.DataBind();

        }
    }
  
}