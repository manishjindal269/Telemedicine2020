using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Telemedicine.Controllers
{
    public class TestLabController : Controller
    {
        // GET: TestLab
        public ActionResult Dashboard()
        {
            return View();
        }
        public ActionResult labAction()
        {
            return View();

        }
    }
}