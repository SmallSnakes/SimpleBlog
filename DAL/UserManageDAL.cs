using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;
namespace DAL
{
    public class UserManageDAL
    {
        public static int JudgeName(UserManageInfo info) {
            string sql = string.Format("select * from user where userName ='{0}'", info.userName);
            DataTable dt = SqlHelper.GetDataSet(sql);
            int result = dt.Rows.Count; 
            return result;

        }
        public static int AddUser(UserManageInfo info) {
            string sql = string.Format("insert into user(userName,password) values('{0}','{1}')", info.userName, info.password);
            int result = SqlHelper.ExecuteCommand(sql);
            return result;
        }

        public static List<string> ShowEditUser(UserManageInfo info) {
            List<string> list = new List<string>();
            string sql = string.Format("select * from user where id = {0};", info.id); 
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                
                string str = dr["userName"].ToString();
                string str1 = dr["password"].ToString();
                list.Add(str);
                list.Add(str1);
            }
            return list;
        }
        public static int EditUser(UserManageInfo info)
        {
            string sql = string.Format("update user set password= '{0}' where id = {1};",info.pass,info.id);
            int result = SqlHelper.ExecuteCommand(sql);
            return result;
        }


    }
}
