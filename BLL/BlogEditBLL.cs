using DAL;
using Model;
using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public  class BlogEditBLL
    {
        public static BlogEditInfo ShowEditBlog(BlogEditInfo editInfo)
        {
            return BlogEditDAL.ShowEditBlog(editInfo);
        }
        public static ArrayList ShowBlogType()
        {
            return BlogEditDAL.ShowBlogType();
        }

        public static ArrayList ChoseBlogType(BlogEditInfo editInfo)
        {
            return BlogEditDAL.ChoseBlogType(editInfo);
        }

        public static int UpdateBlog(BlogEditInfo editInfo)
        {
            return BlogEditDAL.UpdateBlog(editInfo);
        }
    }
}
