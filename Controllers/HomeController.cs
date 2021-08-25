using MVCCRUD.Models;
using MVCCRUD.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVCCRUD.Models;
using MVCCRUD.Service;

namespace MVCCRUD.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            UserService us = new UserService();
            List<Users> userlist =  us.getAllUSersList();
            return View(userlist);
        
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


        [HttpPost]
        public ActionResult RegisterUser(Users user)
        {
           UserService us = new UserService();
            int status = us.insertuserService(user);
            if (status > 0)
            {
                return RedirectToAction("Index", "Home");

            }
            else
            {

            }

            return null;
        }
        public ActionResult UpdateUser(Users user)
        {
            UserService us = new UserService();
            int status = us.UpdateUserserviceData(user);
            if (status > 0)
            {
                return RedirectToAction("Index", "Home");

            }
            else
            {

            }

            return null;
        }
        public ActionResult editpage(string edit)
        {
            ViewBag.Message = "Your contact page.";
            UserService us = new UserService();
            List<Users>singlelist = us.getUserbyId(edit);

            return View(singlelist);
        }
        public ActionResult Delete_User(string id)
        {
            UserService us = new UserService();
            int status = us.DeleteUserserviceData(id);
            if (status > 0)
            {
                return RedirectToAction("Index", "Home");

            }
            else
            {

            }

            return null;
        }

    }
}