using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class TypeEditDAL
    {
        public static string ShowName(TypeEditInfo info)
        {
            string sql = string.Format("select * from blogtype where id ={0}", info.id);
            MySqlDataReader dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                info.editName = dr["typeName"].ToString();

            }
            return info.editName;

        }
        public static int EditType(TypeEditInfo info)
        {
            
            string sql = string.Format("update blogtype set typeName= '{0}' where id ={1} ", info.typeName,info.id);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
