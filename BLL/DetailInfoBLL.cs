using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    public class DetailInfoBLL
    {
        public static DataTable BlogDetail(DetailInfo info)
        {
            return DetailInfoDAL.BlogDetail(info);
        }
        public static int PagePrevious(DetailInfo info)
        {
            return DetailInfoDAL.PagePrevious(info);
        }
        public static int PageNext(DetailInfo info)
        {
            return DetailInfoDAL.PageNext(info);
        }
        public static int AddComment(DetailInfo info)
        {
            return DetailInfoDAL.AddComment(info);
        }
        public static DataTable DataBind(DetailInfo info)
        {
            return DetailInfoDAL.DataBind(info);
        }
    }
}
