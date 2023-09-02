using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ProjetFinalRest.DAL
{
    public class DaoClients
    {
        public Clients FindbyEmail(string email)
        {
            var context = new ProjetFinalDBEntities();
            var clients = context.Clients.Where(c => c.Email == email);
            Clients res;

            if (clients.Count() > 0)
                res = clients.First();
            else
                res = null;
            return res;
        }

        public Clients FindbyEmailandPassword(string email, string password)
        {
            var context = new ProjetFinalDBEntities();
            var clients = context.Clients.Where(c => c.Email == email && c.Password == password);
            Clients res;
            if (clients.Count() > 0)
                res = clients.First();
            else
                res = null;
            return res;
        }
        public IEnumerable<Clients> FindAll()
        {
            return new ProjetFinalDBEntities().Clients.ToList<Clients>();
        }

        public Clients FindById(int id)
        {
            return new ProjetFinalDBEntities().Clients.Find(id);
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