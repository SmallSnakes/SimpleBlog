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
    public class UserListBLL
    {
        public static DataTable ShowUser()
        {
            return UserListDAL.ShowUser();
        }
        public static int delUser(UserListInfo info)
        {

            return UserListDAL.delUser(info);
        }
    }
}
