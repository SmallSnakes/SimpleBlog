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
    public class TypeListDAL
    {
        public static DataTable DataBind(TypeListInfo info)
        {
            string sql = "select * from blogtype";
            //sql = string.Format("SELECT  * FROM blog,blogtype where blog.id not in (SELECT x.id from(select id  from blogtype order by blog.releaseDate desc LIMIT {0}) as x ) and blog.typeId = blogtype.id order by blog.releaseDate desc limit {1}; ", (info.pageNumber - 1) * info.pageSize, info.pageSize);
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }
        public static int Paging()
        {
            int count = 0;
            string sql = "select count(id) c from blogtype";
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                count = Int32.Parse(dr["c"].ToString());
            }
            return count;
        }
        public static int DelType(TypeListInfo info)
        {
            string sql1 = string.Format("delete from blog where typeId = " + info.id);
            int count1 = SqlHelper.ExecuteCommand(sql1);
            int count2 = 0;
            if (count1 > 0)
            {
                string sql2 = string.Format("delete from blogtype where id = " + info.id); 
                count2 = SqlHelper.ExecuteCommand(sql2);
            }
            return count2;
        }
    }
}
