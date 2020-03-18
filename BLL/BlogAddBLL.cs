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
    public class BlogAddBLL
    {
        public static ArrayList ShowBlogType()
        {
            return BlogAddDAL.ShowBlogType();
        }

        public static ArrayList ChoseBlogType(BlogAddInfo addInfo)
        {
           
            return BlogAddDAL.ChoseBlogType(addInfo);
            
        }

        public int AddBlog(BlogAddInfo addInfo)
        {
            return BlogAddDAL.AddBlog(addInfo);
        }
    }
}
