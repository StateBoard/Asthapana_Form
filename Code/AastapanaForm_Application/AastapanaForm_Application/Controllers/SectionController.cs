using AastapanaForm_Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AastapanaForm_Application.Controllers
{
    public class SectionController : Controller
    {
        Db_AsthapanaEntities db = new Db_AsthapanaEntities();
        // GET: Section
        public ActionResult Section1()
        {
            
                return View();
            
            
        }
        [HttpPost]
        public JsonResult Section1(Tbl_Section model)
        {
            try
            {
                if (model.From > model.To)
                {
                    return Json(new { Result = false, Response = "Select Valid Date" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    model.Login_ID = Session["loginId"].ToString();
                    db.Tbl_Section.Add(model);
                    db.SaveChanges();
                    return Json(new { Result = true, Response = "Submitted" }, JsonRequestBehavior.AllowGet);
                }
                
            }
            catch(Exception ex)
            {
                return Json(new { Result = false, Response = "Something went Wrong" }, JsonRequestBehavior.AllowGet);
            }
           
        }

       

        public ActionResult SectionLogin()
        {
            return View();
        }
        [HttpPost]
        public ActionResult printForm(Tbl_Login tbl_Login)
        {
           
            var res = db.Tbl_Login.Where(x => x.Login_ID == tbl_Login.Login_ID).FirstOrDefault();
           
            if(res.Login_ID==tbl_Login.Login_ID && res.Password==tbl_Login.Password)
            {
                TempData["Login"] = res.Login_ID;
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        public JsonResult GetSectionData(int ID)
        {
            var res = db.Tbl_Section.Where(x => x.Id == ID).FirstOrDefault();
            return Json(new { Result = true, Response = res }, JsonRequestBehavior.AllowGet);
        }

       
    }
}