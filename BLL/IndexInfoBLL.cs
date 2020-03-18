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
    public class IndexInfoBLL
    {
        public static int Paging()
        {
            return IndexInfoDAL.Paging();
        }
        public static DataTable DataBind(IndexInfo info)
        {
            return IndexInfoDAL.DataBind(info);
        }
    }
}
