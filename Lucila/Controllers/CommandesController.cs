using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetFinalMVC.DAL;


namespace ProjetFinalMVC.Controllers
{
    public class CommandesController : Controller
    {
        // GET: Article
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FindAll()
        {
            return View(new DaoCommandes().FindAll());
        }


        // Commandes/FindById/#id
        public ActionResult FindById(string id)
        {
            return View(new DaoCommandes().FindById(Convert.ToInt32(id)));
        }

        // Commandes/Delete/35
        public ActionResult Delete(string id)
        {
            return View(new DaoCommandes().Delete(Convert.ToInt32(id)));
        }


        // Commandes/Create/35
        public ActionResult Create()
        {
            return View();
        }

        public ActionResult ConfirmCreate(Commandes com)
        {
            return View(new DaoCommandes().Create(com));
        }

        public ActionResult Update(string id)
        {
            return View(new DaoCommandes().FindById(Convert.ToInt32(id)));
        }

        public ActionResult ConfirmUpdate(Commandes com)
        {
            return View(new DaoCommandes().Update(com));
        }
    }
}