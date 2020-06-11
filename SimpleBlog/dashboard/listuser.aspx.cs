using Model;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimpleBlog.dashboard
{
    public partial class listuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("login.aspx");
            }

            string action = Request.QueryString["action"];
            string id = Request.QueryString["id"];
           
            DataBind();
            

        }
        private new void DataBind()
        {

            GridView1.DataSource = UserListBLL.ShowUser();
            
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            Response.Redirect("edituser.aspx?id=" + GridView1.Rows[i].Cells[0].Text.ToString());
        }
        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            UserListInfo info = new UserListInfo();
            int i = e.RowIndex;
            info.id = int.Parse(GridView1.Rows[i].Cells[0].Text.ToString());
            if (UserListBLL.delUser(info) != -1)
            {
                Response.Redirect("listuser.aspx");
                Response.Write("删除成功");
                
            }
            else {
                Response.Write("删除失败");
            }

           
           
        }
    }
}