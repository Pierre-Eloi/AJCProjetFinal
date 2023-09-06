using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProjetFinalMVC.DAL;

namespace ProjetFinalMVC.Controllers
{
    public class ClientsController : Controller
    {
        // GET: Clients
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FindAll()
        {

            return View(new DaoClients().FindAll());
        }

        // Clients/FindById/#id
        public ActionResult FindById(string id)
        {
            return View(new DaoClients().FindById(Convert.ToInt32(id)));
        }

        // Clients/Delete/35
        public ActionResult Delete(string id)
        {
            return View(new DaoClients().Delete(Convert.ToInt32(id)));
        }

        // Clients/Create/35
        public ActionResult Create()
        {
            return View();
        }

        public ActionResult ConfirmCreate(Clients c)
        {
            return View(new DaoClients().Create(c));
        }

        public ActionResult Update(string id)
        {

            return View(new DaoClients().FindById(Convert.ToInt32(id)));
        }

        public ActionResult ConfirmUpdate(Clients c)
        {

            return View(new DaoClients().Update(c));
        }
    }
}