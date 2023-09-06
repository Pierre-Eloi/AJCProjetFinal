using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetFinalMVC.DAL;


namespace ProjetFinalMVC.Controllers
{
    public class ArticlesController : Controller
    {
        // GET: Articles
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FindAll()
        {
            return View(new DaoArticles().FindAll());
        }


        // Articles/FindById/#id
        public ActionResult FindById(string id)
        {
            return View(new DaoArticles().FindById(id));
        }

        // Articles/Delete/35
        public ActionResult Delete(string id)
        {
            return View(new DaoArticles().Delete(id));
        }


        // Articles/Create/35
        public ActionResult Create()
        {
            return View();
        }

        public ActionResult ConfirmCreate(Articles a)
        {
            return View(new DaoArticles().Create(a));
        }


        public ActionResult Update(string id)
        {
            return View(new DaoArticles().FindById(id));
        }

        public ActionResult ConfirmUpdate(Articles a)
        {

            return View(new DaoArticles().Update(a));
        }
    }
}