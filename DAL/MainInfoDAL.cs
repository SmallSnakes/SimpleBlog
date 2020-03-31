using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class MainInfoDAL
    {
        public static int countBlog()
        {
            int result = 0;
            string sql = string.Format("select * from blog");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
        public static int countType()
        {
            int result = 0;
            string sql = string.Format("select *  from blogtype");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
        public static int countUser()
        {
            int result = 0;
            string sql = string.Format("select * from user");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
        public static int countComment()
        {
            int result = 0;
            string sql = string.Format("select * from comment where state=1");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
        public static int countContact()
        {
            int result = 0;
            string sql = string.Format("select * from words where state=1");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
        
    }
}
