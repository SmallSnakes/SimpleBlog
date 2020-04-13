using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class GlobalInfoBLL
    {
     
            public static int PersonTotal()
            {
            return GlobalInfoDAL.PersonTotal();
            }
        public static void UpdateTotal(GlobalInfo info)
        {
             GlobalInfoDAL.UpdateTotal(info);

        }
    }
}
