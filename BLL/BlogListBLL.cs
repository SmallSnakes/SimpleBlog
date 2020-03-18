using DAL;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
   public  class BlogListBLL
    {
        public static int Paging()
        {
            return BlogListDAL.Paging();
        }

        public static DataTable DataBind(BlogListInfo info)
        {
            return BlogListDAL.DataBind(info);
        }
       

        public static DataTable SearchBlog(BlogListInfo info)
        {
            return BlogListDAL.SearchBlog(info);


        }

        public static int DelBlog(BlogListInfo info)
        {
            return BlogListDAL.DelBlog(info);
        }
    }
}
