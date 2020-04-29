using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Model;

namespace DAL
{
    public class ContactManageDAL
    {
        public static DataTable dataBind() {
            DataTable dt = new DataTable();
            string sql = "SELECT  id,contents,name,email,date,state FROM words limit 10";

            MySqlDataAdapter da = SqlHelper.GetAdapter(sql);
            da.Fill(dt);
            return dt;
        }
        public static int dataDel(ContactManageInfo info) {
            string sql = string.Format("DELETE FROM words WHERE id = '{0}'",info.id);
            int returnNum = SqlHelper.ExecuteCommand(sql);
            return returnNum;

        }
        public static int dataCheck(ContactManageInfo info)
        {
            string sql = string.Format("update words set state=1 where id ='{0}'", info.id);
            int returnNum = SqlHelper.ExecuteCommand(sql);
            return returnNum;

        }
    }
}
