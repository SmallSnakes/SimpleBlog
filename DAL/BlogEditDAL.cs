using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class BlogEditDAL
    {
        public static BlogEditInfo showEditBlog(BlogEditInfo editInfo)
        {
            
            BlogEditInfo info = new BlogEditInfo();
            string sql = string.Format("select blog.id,title,releaseDate,contents,typeName,photo,summary from blog,blogtype where blog.id = {0} and blog.typeId=blogtype.id;", editInfo.id);
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                info.title = dr["title"].ToString();
                info.summary = dr["summary"].ToString();
                info.DropDownList1 = dr["typeName"].ToString();
                info.releaseDate = string.Format("{0:yyyy-MM-dd HH:mm:ss}", dr["releaseDate"]);
                info.contents = dr["contents"].ToString();
                info.photo = dr["photo"].ToString();
            }
            return info;
        }
        public static ArrayList showBlogType()
        {
            ArrayList ar = new ArrayList();
            BlogAddInfo info = new BlogAddInfo();
            string sql = string.Format("select * from blogtype");
            MySqlDataReader reader = SqlHelper.GetReader(sql);

            while (reader.Read())
            {
                info.DropDownList1 = reader["typeName"].ToString();

                ar.Add(info.DropDownList1);
            }
            reader.Close();
            return ar;
        }

        public static ArrayList choseBlogType(BlogEditInfo editInfo)
        {
            ArrayList ar = new ArrayList();
            BlogAddInfo info = new BlogAddInfo();
            string sql = string.Format("select id from blogtype where typeName = '{0}';", editInfo.typeName);
            MySqlDataReader reader = SqlHelper.GetReader(sql);
            while (reader.Read())
            {
                info.typeId = Convert.ToInt32(reader[0].ToString());
                ar.Add(info.typeId);
            }
            reader.Close();
            return ar;
        }

        public static int updateBlog(BlogEditInfo editInfo)
        {
            string sql = string.Format("update blog.blog set title='{0}', summary='{1}',releaseDate='{2}',  contents='{3}', typeId='{4}', photo='{5}' where id='{6}';", editInfo.title, editInfo.summary, editInfo.releaseDate, editInfo.contents, editInfo.typeId, editInfo.photo, editInfo.id);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
