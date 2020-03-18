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
    public class UserInfoDAL
    {
        public static UserInfo Login(UserInfo user)
        {
            UserInfo u = null;
            string sql = string.Format("select  * from user where userName ='{0}'", user.userName);
            DataTable dt = SqlHelper.GetDataSet(sql);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    u = new UserInfo();
                    DataRow dr = dt.Rows[0];
                    u.userName = dr["userName"].ToString();
                    u.password = dr["password"].ToString();
                }
            }
            return u;

        }
    }
}
