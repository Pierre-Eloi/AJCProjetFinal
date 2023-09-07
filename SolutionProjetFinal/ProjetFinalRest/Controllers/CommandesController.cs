using ProjetFinalRest.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace ProjetFinalRest.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class CommandesController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<Commandes> Get()
        {
            return new DaoCommandes().FindAll();
        }

        [HttpGet]
        public IEnumerable<Commandes> Get(int idClient, int id)
        {
            return new DaoCommandes().FindbyIdClient(idClient);
        }

        // GET api/<controller>/5
        public Commandes Get(int id)
        {
            return new DaoCommandes().FindById(id);
        }

        // POST api/<controller>
        public Commandes Post([FromBody] Commandes commande)
        {
            return new DaoCommandes().Create(commande);
        }

        // PUT api/<controller>/5
        public Commandes Put([FromBody] Commandes commande)
        {
            return new DaoCommandes().Update(commande);
        }

        // DELETE api/<controller>/5
        public Commandes Delete(int id)
        {
            return new DaoCommandes().Delete(id);
        }
    }
}