using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ProjetFinalMVC.DAL

{
    public class DaoClients
    {
        public IEnumerable<Clients> FindAll()
        {
            return new ProjetFinalDBEntities().Clients.ToList<Clients>();
        }

        public Clients FindById(int id)
        {
            ProjetFinalDBEntities context = new ProjetFinalDBEntities();
            var client = context.Clients.Find(id);
            return client;
        }

        public Clients Create(Clients client)
        {
            var context = new ProjetFinalDBEntities();
            context.Clients.Add(client);
            context.SaveChanges();
            return client;
        }

        public Clients Delete(int id)
        {
            var context = new ProjetFinalDBEntities();
            var client = context.Clients.Find(id);
            context.Clients.Remove(client);
            context.SaveChanges();
            return client;
        }

        public Clients Update(Clients client)
        {
            var context = new ProjetFinalDBEntities();
            context.Entry(client).State = EntityState.Modified;
            context.SaveChanges();
            return client;
        }

    }
}