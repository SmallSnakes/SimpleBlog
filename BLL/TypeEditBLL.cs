using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class TypeEditBLL
    {
        public static string ShowName(TypeEditInfo info)
        {
            return TypeEditDAL.ShowName(info);

        }
        public static int EditType(TypeEditInfo info)
        {
            return TypeEditDAL.EditType(info);
        }
    }
}
