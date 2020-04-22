using DAL;
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
    }
}
