using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
  public class BlogAddDAL
    {
        public static ArrayList ShowBlogType()
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
        
        public static ArrayList ChoseBlogType(BlogAddInfo addInfo)
        {
            ArrayList ar = new ArrayList();
            BlogAddInfo info = new BlogAddInfo();
            string sql = string.Format("select id from blogtype where typeName = '{0}';", addInfo.typeName);
            MySqlDataReader reader = SqlHelper.GetReader(sql);
            while (reader.Read())
            {
                info.typeId = Convert.ToInt32(reader[0].ToString());
                ar.Add(info.typeId);
            }
            reader.Close();
            return ar;
        }

        public static int AddBlog(BlogAddInfo addInfo)
        {
            string sql = string.Format("insert into blog(title,releaseDate,contents,typeId,photo,summary) values('{0}','{1}','{2}','{3}','{4}','{5}')", addInfo.title, addInfo.releaseDate, addInfo.contents, addInfo.typeId, addInfo.photo, addInfo.summary);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
