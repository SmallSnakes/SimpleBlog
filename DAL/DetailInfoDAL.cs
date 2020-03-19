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
    public class DetailInfoDAL
    {
        public static DataTable BlogDetail(DetailInfo info) {
            string sql = string.Format("select title,releaseDate,contents,typeName from blog.blog,blog.blogtype where blog.id = {0} and blog.typeId = blogtype.id;", info.id);
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }

        public static int PagePrevious(DetailInfo info) {
            int count = 0;
            string sql = string.Format("select  * from blog.blog where id < {0} order by id desc limit 1;", info.id);
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                count = Int32.Parse(dr["id"].ToString());
            }
            
            return count;
        }
        public static int PageNext(DetailInfo info)
        {
            int count = 0;
            string sql = string.Format("select * from blog.blog where id > {0} order by id asc limit 1;", info.id);
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                count = Int32.Parse(dr["id"].ToString());
            }

            return count;
        }

        public static int AddComment(DetailInfo info)
        {
            int count = 0;
            string sql = string.Format("insert into comment(blogId,commentContents,commentDate) values('{0}','{1}','{2}')", info.blogId, info.commentContents, info.commentDate);
            count = SqlHelper.ExecuteCommand(sql);
            return count;
        }

        public static DataTable DataBind(DetailInfo info)
        {
            string sql = string.Format("SELECT  commentContents,commentDate FROM blog.comment where comment.blogId= {0} and comment.state = 1 order by comment.commentDate desc;", info.id);
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }
    }

    
}
