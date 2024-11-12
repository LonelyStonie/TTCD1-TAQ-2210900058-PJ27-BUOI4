using System.Web.Mvc;
using System.Web.Routing;

namespace TTCD1_TAQ_2210900058_PJ2
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            // Route cụ thể cho Customer Controller
            routes.MapRoute(
                name: "Customer",
                url: "Customer/{action}/{id}",
                defaults: new { controller = "Customer", action = "ChooseComputer", id = UrlParameter.Optional }
            );

            // Route cụ thể cho Admin Controller
            routes.MapRoute(
                name: "Admin",
                url: "Admin/{action}/{id}",
                defaults: new { controller = "Admin", action = "Dashboard", id = UrlParameter.Optional }
            );

            // Default route
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
