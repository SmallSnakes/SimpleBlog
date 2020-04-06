using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class AddTypeBLL
    {
        public static string JudgeName(AddTypeInfo info)
        {
            
            return AddTypeDAL.JudgeName(info);

        }
        public static int AddType(AddTypeInfo info)
        {
            return AddTypeDAL.AddType(info);
        }
    }
}
