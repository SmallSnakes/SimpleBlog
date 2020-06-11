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
   public class CommentManageBLL
    {
        public static DataTable dataBind()
        {
            return CommentManageDAL.dataBind();
        }
        public static int delComment(CommentManageInfo info)
        {

            return CommentManageDAL.delComment(info);
        }
        public static int checkComment(CommentManageInfo info)
        {
            return CommentManageDAL.checkComment(info);
        }
    }
}
