using DAL;
using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UserInfoBLL
    {

        public static UserInfo Login(UserInfo user)
        {
            return UserInfoDAL.Login(user);
        }
    }
}
