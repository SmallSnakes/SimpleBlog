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
    public partial class listcomment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            DataBind();
          
        }
        private new void DataBind()
        {

            GridView1.DataSource = CommentManageBLL.dataBind();
            GridView1.DataBind();

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[4].Text == "1")
                {
                    e.Row.Cells[4].Text = "已审核";
                }
                else
                {
                    e.Row.Cells[4].Text = "未审核";
                }
            }
           

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
           
            CommentManageInfo info = new CommentManageInfo();
            info.id = int.Parse(GridView1.Rows[i].Cells[0].Text.ToString());
            if (CommentManageBLL.checkComment(info) != -1)
            {
                Response.Redirect("listcomment.aspx");
                Response.Write("<script>alert('审阅成功！！');</script>");

            }
            else
            {
                Response.Write("<script>alert('审阅失败！！');</script>");
            }
            Response.Redirect("listcomment.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            CommentManageInfo info = new CommentManageInfo();
            int i = e.RowIndex;
            info.id = int.Parse(GridView1.Rows[i].Cells[0].Text.ToString());
            if (CommentManageBLL.delComment(info) != -1)
            {
                Response.Redirect("listcomment.aspx");
                Response.Write("<script>alert('删除成功！！');</script>");
                

            }
            else
            {
                Response.Write("<script>alert('删除失败！！');</script>");
            }
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataSource = CommentManageBLL.dataBind();
        }

    }
}