using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Telemedicine2020.Controllers
{
    public class FacilityController : Controller
    {
        // GET: Facility
        public ActionResult Dashboard()
        {
            return View();
        }

        public ActionResult Division()
        {
            return View();
        }
        public ActionResult Employee()
        {
            return View();
        }
    }
}