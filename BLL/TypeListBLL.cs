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
    public class TypeListBLL
    {
        public static DataTable DataBind(TypeListInfo info)
        {
            return TypeListDAL.DataBind(info);
        }
            public static int Paging()
        {
           return TypeListDAL.Paging();
        }
        public static int DelType(TypeListInfo info)
        {
            return TypeListDAL.DelType(info);
        }
    }
}
