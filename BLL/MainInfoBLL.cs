using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Model;
using MySql.Data.MySqlClient;

namespace BLL
{
   public class MainInfoBLL
    {
        
        public static int countBlog()
        {
            return MainInfoDAL.countBlog();
        }
        public static int countType()
        {
            return MainInfoDAL.countType();
        }
        public static int countUser()
        {
            return MainInfoDAL.countUser();
        }
        public static int countComment()
        {
            return MainInfoDAL.countComment();
        }
        public static int countContact()
        {
            return MainInfoDAL.countContact();
        }

    }
}
