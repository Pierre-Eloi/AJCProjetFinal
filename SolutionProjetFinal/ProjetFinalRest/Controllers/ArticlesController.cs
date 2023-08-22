using ProjetFinalRest.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ProjetFinalRest.Controllers
{
    public class ArticlesController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<Articles> Get()
        {
            return new DaoArticles().FindAll();
        }

        // GET api/<controller>/5
        public Articles Get(string id)
        {
            return new DaoArticles().FindById(id);
        }

        // POST api/<controller>
        public Articles Post([FromBody] Articles article)
        {
            return new DaoArticles().Create(article);
        }

        // PUT api/<controller>/5
        public Articles Put([FromBody] Articles article)
        {
            return new DaoArticles().Update(article);
        }

        // DELETE api/<controller>/5
        public Articles Delete(string id)
        {
            return new DaoArticles().Delete(id);
        }
    }
}