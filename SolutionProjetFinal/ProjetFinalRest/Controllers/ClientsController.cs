﻿using ProjetFinalRest.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProjetFinalRest.Controllers
{
    public class ClientsController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<Clients> Get()
        {
            return new DaoClients().FindAll();
        }

        // GET api/<controller>/5
        public Clients Get(int id)
        {
            return new DaoClients().FindById(id);
        }

        // POST api/<controller>
        public Clients Post([FromBody] Clients client)
        {
            return new DaoClients().Create(client);
        }

        // PUT api/<controller>/5
        public Clients Put([FromBody] Clients client)
        {
            return new DaoClients().Update(client);
        }

        // DELETE api/<controller>/5
        public Clients Delete(int id)
        {
            return new DaoClients().Delete(id);
        }
    }
}