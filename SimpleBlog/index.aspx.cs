using BLL;
using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog
{
    public partial class _Default : Page
    {

        IndexInfo info = new IndexInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            Paging();
            DataBind();
        }
        private void Paging()
        {
            int count = IndexInfoBLL.Paging();

            info.pageSize = 3;

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
            this.blogList.DataSource = IndexInfoBLL.DataBind(info);
            this.blogList.DataBind();

        }
   
    }
}