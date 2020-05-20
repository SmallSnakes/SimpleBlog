using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Model;

namespace DAL
{
    public class UserListDAL
    {
        public static DataTable ShowUser() {
            string sql = "select id as '编号',userName as '用户名', password as '密码'  from user";
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }
        public static int delUser(UserListInfo info) {
            string sql = string.Format("delete from user where id={0}", info.id);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
