using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace DAL
{
    public class AddTypeDAL
    {
        public static string JudgeName(AddTypeInfo info)
        {
            string sql = string.Format("select * from blogtype where typeName ='{0}'", info.typeName);
            MySqlDataReader  dr = SqlHelper.GetReader(sql);
            while (dr.Read())
            {
                info.typeName = dr["typeName"].ToString();

            }
            return info.typeName;

        }
        public static int AddType(AddTypeInfo info)
        {
            string sql = string.Format("insert into blogtype(typeName) values('{0}')", info.typeName);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
    }
}
