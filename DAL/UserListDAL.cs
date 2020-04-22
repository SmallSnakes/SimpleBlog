using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class UserListDAL
    {
        public static DataTable ShowUser() {
            string sql = "select * from user";
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }
    }
}
