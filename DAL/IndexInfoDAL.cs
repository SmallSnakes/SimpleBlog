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
    public class IndexInfoDAL
    {
        public static int Paging()
        {
            int count = 0;
            string sql = "select count(id) c from blog";
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                count = Int32.Parse(dr["c"].ToString());
            }
            return count;
        }

        public static DataTable DataBind(IndexInfo info)
        {
            string sql = "select * from blog";
            sql =string.Format("SELECT  blog.id,title,releaseDate,typeName,photo,summary FROM blog,blogtype where blog.id not in (SELECT x.id from(select id  from blog order by blog.releaseDate desc LIMIT {0}) as x ) and blog.typeId = blogtype.id order by blog.releaseDate desc limit {1}; ", (info.pageNumber-1) * info.pageSize, info.pageSize);
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }

       
    }

}
