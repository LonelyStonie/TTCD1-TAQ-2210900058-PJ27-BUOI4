using System.Web;
using System.Web.Mvc;

namespace TTCD1_TAQ_2210900058_PJ2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
