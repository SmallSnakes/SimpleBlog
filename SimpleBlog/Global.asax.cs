using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SimpleBlog
{
    public class Global : System.Web.HttpApplication
    {
        //应用启动执行
        protected void Application_Start(object sender, EventArgs e)
        {     
            int count = GlobalInfoBLL.PersonTotal() ;
            Application["total"] = count;
            Application["online"] = 0;
        }
        //一个会话开始执行
        GlobalInfo info = new GlobalInfo();
        protected void Session_Start(object sender, EventArgs e)
        {
            Session.Timeout = 1;
            Application.Lock();
            Application["total"] = System.Convert.ToInt32(Application["total"]) + 1;
            info.total = System.Convert.ToInt32(Application["total"]);
            GlobalInfoBLL.UpdateTotal(info);
            Application["online"] = System.Convert.ToInt32(Application["online"]) + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }
        //一个会话结束执行
        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = System.Convert.ToInt32(Application["online"]) - 1;
            Application.UnLock();
        }
        //应用中止时执行
        protected void Application_End(object sender, EventArgs e)
        {
        }
    }
}