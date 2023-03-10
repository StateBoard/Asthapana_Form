using AastapanaForm_Application.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AastapanaForm_Application.Controllers
{
    public class HomeController : Controller
    {
        Db_AsthapanaEntities db = new Db_AsthapanaEntities();
        
       
        public ActionResult Index()
        {
           
            var loginID = TempData["Login"].ToString();
            string Query = "SELECT * FROM Tbl_Section where Tbl_Section.Login_ID="+loginID+   " ";
            List<SectionModel> model = db.Database.SqlQuery<SectionModel>(Query).ToList();
           
            var res = db.Tbl_Login.Where(x => x.Login_ID == loginID).FirstOrDefault();
            //var res = db.Tbl_Login.Where(x => x.Login_ID == loginID).FirstOrDefault();
            return View(model);
        }
        public ActionResult Register()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Register(Tbl_Login model)
        {
            db.Tbl_Login.Add(model);
            db.SaveChanges();
            ModelState.Clear();
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(Tbl_Login model)
        {
            try
            {
                  var   res = db.Tbl_Login.Where(x => x.Password == model.Password && x.Type == model.Type && x.Login_ID == model.Login_ID).FirstOrDefault();
             
                
                if(res.Type== "Employee")
                {
                    Session["loginId"] = res.Login_ID;
                    return View("EmpDashBoard");
                }
                else if(res.Type== "Department")
                {
                    Session["loginId"] = res.Login_ID;
                    return View("DeptDashBoard");
                }
                else
                {
                    Session["loginId"] = res.Login_ID;
                    return View("AdminDashBoard");
                }
               
            }
            catch(Exception ex)
            {
                return View();
            }
        }
        public ActionResult EmpDashBoard()
        {
            return View();
        }
        public ActionResult DeptDashBoard()
        {
            return View();
        }
        public ActionResult AdminDashBoard()
        {
            return View();
        }






    }
}