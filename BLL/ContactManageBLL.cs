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
    public class ContactManageBLL
    {
        public static DataTable dataBind()
        {
            return ContactManageDAL.dataBind();
        }
        public static int dataDel(ContactManageInfo info)
        {

            return ContactManageDAL.dataDel(info);

        }
        public static int dataCheck(ContactManageInfo info)
        {
            return ContactManageDAL.dataCheck(info);
        }
    }
}
