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
        public int MainInfo()
        {
            int result = 0;
            string sql = string.Format("select * from blog");
            DataTable dt = SqlHelper.GetDataSet(sql);
            result = dt.Rows.Count;
            return result;
        }
    }
}
