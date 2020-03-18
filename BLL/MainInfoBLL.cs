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
        
        public int MainInfo()
        {
            MainInfoDAL infoDal = new MainInfoDAL();
            int result = infoDal.MainInfo();
            return result;
        }

    }
}
