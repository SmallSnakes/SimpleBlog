using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class GlobalInfoDAL
    {
        public static int PersonTotal()
        {
            int count = 0;
            string sql = "select * from total";
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                count = Int32.Parse(dr["num"].ToString());
            }
            return count;
        }
        public static void UpdateTotal(GlobalInfo info)
        {
        string sql = string.Format("update total set num={0}",info.total);
        SqlHelper.ExecuteCommand(sql);
        
        }
     }
}
