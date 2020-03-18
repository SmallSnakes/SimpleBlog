using BLL;
using Model;
using MySql.Data.MySqlClient;
using System;
namespace SimpleBlog
{
    public partial class detail : System.Web.UI.Page
    {
        DetailInfo info = new DetailInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            info.id = Request.QueryString["id"];
            BlogDetail();
            //PagePrevious();
            //PageNext();
            //DataBind();
        }
        private void BlogDetail()
        {
            this.blogDetailRpt.DataSource = DetailInfoBLL.BlogDetail(info);
            this.blogDetailRpt.DataBind();
        }

        //void PagePrevious()
        //{
        //    int count = DetailInfoBLL.PagePrevious(info);
        //    if (count == 0)
        //    {
        //        this.previous.Enabled = false;
        //        this.previous.Text = "没有上一篇了";
        //    }
        //    else
        //    {
        //        this.previous.NavigateUrl = "detail.aspx?id=" + count;
        //    }

        //}

        //void PageNext()
        //{

        //    int count = DetailInfoBLL.PageNext(info);

        //    if (count == 0)
        //    {
        //        this.next.Enabled = false;
        //        this.next.Text = "没有下一篇了";
        //    }
        //    else
        //    {
        //        this.next.NavigateUrl = "detail.aspx?id=" + count;
        //    }
        //}

        protected void AddComment_Click(object sender, EventArgs e)
        {
            info.blogId = Request.QueryString["id"];
            info.commentContents = Request.Form["desc"];
            info.commentDate = DateTime.Now.ToString();

            if (String.IsNullOrEmpty(info.commentContents))
            {
                Response.Write("<script>alert('评论不能为空！！');</script>");
                return;
            }

            int num = DetailInfoBLL.AddComment(info);
            if (num == -1)
            {
                Response.Write("<script>alert('评论失败！');</script>");
            }
            else
            {
                Response.Write("<script>alert('评论成功,请等待审核！');</script>");
            }
        }

        //private new void DataBind()
        //{
        //    this.commentRpt.DataSource = DetailInfoBLL.DataBind(info);
        //    this.commentRpt.DataBind();
        //}
    }
}