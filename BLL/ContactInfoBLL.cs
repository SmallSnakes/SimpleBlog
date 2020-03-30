using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
      public class ContactInfoBLL
    {
        public static int addContact(ContactInfo info)
        {

            return ContactInfoDAL.addContact(info);
        }
        public static DataTable DataBind()
        {
            return ContactInfoDAL.DataBind();
        }
    }
}
