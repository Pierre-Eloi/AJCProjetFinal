using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ProjetFinalRest.DAL
{
    public class DaoArticles
    {
        public IEnumerable<Articles> FindAll()
        {
            return new ProjetFinalDBEntities().Articles.ToList<Articles>();
        }

        public Articles FindById(string id)
        {
            return new ProjetFinalDBEntities().Articles.Find(id);
        }

        public Articles Create(Articles article)
        {
            var context = new ProjetFinalDBEntities();
            context.Articles.Add(article);
            context.SaveChanges();
            return article;
        }

        public Articles Delete(string id)
        {
            var context = new ProjetFinalDBEntities();
            var article = context.Articles.Find(id);
            context.Articles.Remove(article);
            context.SaveChanges();
            return article;
        }

        public Articles Update(Articles article)
        {
            var context = new ProjetFinalDBEntities();
            context.Entry(article).State = EntityState.Modified;
            context.SaveChanges();
            return article;
        }
    }
}