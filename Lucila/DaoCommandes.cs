using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ProjetFinalMVC.DAL
{
    public class DaoCommandes
    {
        public IEnumerable<Commandes> FindAll()
        {
            return new ProjetFinalDBEntities().Commandes.ToList<Commandes>();
        }

        public Commandes FindById(int id)
        {
            ProjetFinalDBEntities context = new ProjetFinalDBEntities();
            var commandes = context.Commandes.Find(id);
            return commandes;
        }

        public Commandes Create(Commandes commandes)
        {
            var context = new ProjetFinalDBEntities();
            context.Commandes.Add(commandes);
            context.SaveChanges();
            return commandes;
        }

        public Commandes Delete(int id)
        {
            var context = new ProjetFinalDBEntities();
            var commandes = context.Commandes.Find(id);
            context.Commandes.Remove(commandes);
            context.SaveChanges();
            return commandes;
        }

        public Commandes Update(Commandes commandes)
        {
            var context = new ProjetFinalDBEntities();
            context.Entry(commandes).State = EntityState.Modified;
            context.SaveChanges();
            return commandes;
        }
    }
}