using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Telemedicine.Controllers
{
    public class HelpDeskController : Controller
    {
        // GET: HelpDesk
        public ActionResult Dashboard()
        {
            return View();
        }
        public ActionResult patientAction()
        {
            return View();

        }
        
        public ActionResult addPatient()
        {
            return View();
        }
    }
}