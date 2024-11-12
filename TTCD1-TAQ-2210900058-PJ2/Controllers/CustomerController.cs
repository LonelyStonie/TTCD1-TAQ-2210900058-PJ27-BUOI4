using System.Collections.Generic;
using System.Web.Mvc;

namespace TTCD1_TAQ_2210900058_PJ2.Controllers
{
    public class CustomerController : Controller
    {
        // Action hiển thị menu đồ ăn
        public ActionResult ViewFoodMenu()
        {
            // Dữ liệu mẫu cho menu đồ ăn
            var foodMenu = new List<string>
            {
                "Bánh mì",
                "Phở",
                "Coca-Cola",
                "Trà sữa",
                "Snack"
            };

            // Truyền dữ liệu menu đồ ăn sang View
            return View(foodMenu);
        }

        // Action hiển thị danh sách máy tính để chọn
        public ActionResult ChooseComputer()
        {
            // Dữ liệu mẫu cho danh sách máy tính
            var computers = new List<string>
            {
                "Máy 1",
                "Máy 2",
                "Máy 3",
                "Máy 4",
                "Máy 5"
            };

            // Truyền dữ liệu danh sách máy tính sang View
            return View(computers);
        }
    }
}
