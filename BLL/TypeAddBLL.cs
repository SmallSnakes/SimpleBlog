using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class TypeAddBLL
    {
        public static string JudgeName(TypeAddInfo info)
        {
            
            return TypeAddDAL.JudgeName(info);

        }
        public static int AddType(TypeAddInfo info)
        {
            return TypeAddDAL.AddType(info);
        }
    }
}
