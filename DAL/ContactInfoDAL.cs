using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class ContactInfoDAL 
    {
        public static int addContact(ContactInfo info) {
            string sql = string.Format("insert into words(name,email,contents,date) values('{0}','{1}','{2}','{3}')", info.name, info.email, info.contents, info.date);
            int num = SqlHelper.ExecuteCommand(sql);
            return num;
        }
        public static DataTable DataBind()
        {
            string sql = " select name,contents,date  from words where state=1 order by date desc limit 10";
            DataTable dt = SqlHelper.GetDataSet(sql);
            return dt;
        }
    }
  
}
