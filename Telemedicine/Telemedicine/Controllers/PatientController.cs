using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Telemedicine.Controllers
{
    public class PatientController : Controller
    {
        // GET: Patient
        public ActionResult Dashboard()
        {
            return View();
        }

        public ActionResult PatientFamilyList()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
    }
}