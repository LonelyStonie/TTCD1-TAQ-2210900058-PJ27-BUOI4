using System.Web.Mvc;

namespace TTCD1_TAQ_2210900058_PJ2.Controllers
{
    public class HomeController : Controller
    {
        // Hiển thị form đăng nhập
        public ActionResult Index()
        {
            return View();
        }

        // Xử lý đăng nhập
        [HttpPost]
        public ActionResult Index(string username, string password, string role)
        {
            if (role == "Admin" && username == "admin" && password == "admin123")
            {
                TempData["Message"] = "Đăng nhập Admin thành công!";
                return RedirectToAction("Dashboard", "Admin"); // Điều hướng đến Admin
            }
            else if (role == "Customer" && username == "customer" && password == "customer123")
            {
                TempData["Message"] = "Đăng nhập Khách hàng thành công!";
                return RedirectToAction("ChooseComputer", "Customer"); // Điều hướng đến Customer
            }
            else
            {
                ViewBag.Error = "Tên đăng nhập, mật khẩu hoặc vai trò không đúng!";
                return View();
            }
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            return View();
        }
    }
}
