using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class CommentManageDAL
    {
        public static DataTable dataBind()
        {
            DataTable dt = new DataTable();
            string sql = " SELECT  comment.id,commentContents,commentDate,state,title FROM comment,blog where comment.blogId=blog.id order by commentDate desc";
            MySqlDataAdapter da = SqlHelper.GetAdapter(sql);
            da.Fill(dt);
            return dt;
        }

        public static int delComment(CommentManageInfo info)
        {
            string sql = string.Format("delete from comment where id={0}", info.id);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
        public static int checkComment(CommentManageInfo info)
        {
            string sql = string.Format("update comment set state = 1 where id = {0} ", info.id);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
