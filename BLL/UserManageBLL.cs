using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class UserManageBLL
    {
        public static int JudgeName(UserManageInfo info)
        {
            return UserManageDAL.JudgeName(info);

        }
        public static int AddUser(UserManageInfo info)
        {
            return UserManageDAL.AddUser(info);
        }
        public static List<string> ShowEditUser(UserManageInfo info)
        {
            return UserManageDAL.ShowEditUser(info);
        }
        public static int EditUser(UserManageInfo info)
        {
           
            return UserManageDAL.EditUser(info);
        }
    }
}
