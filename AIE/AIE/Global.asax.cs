using AIE.App_Start;
using System;
using System.Web;
using System.Web.Http;
using System.Web.Routing;

namespace AIE
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}