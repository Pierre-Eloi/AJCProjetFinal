using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ProjetFinalRest.DAL
{
    public class DaoCommandes
    {
        public IEnumerable<Commandes> FindAll()
        {
            return new ProjetFinalDBEntities().Commandes.ToList<Commandes>();
        }

        public Commandes FindById(int id)
        {
            return new ProjetFinalDBEntities().Commandes.Find(id);
        }

        public Commandes Create(Commandes commande)
        {
            var context = new ProjetFinalDBEntities();
            context.Commandes.Add(commande);
            context.SaveChanges();
            return commande;
        }

        public Commandes Delete(int id)
        {
            var context = new ProjetFinalDBEntities();
            var commande = context.Commandes.Find(id);
            context.Commandes.Remove(commande);
            context.SaveChanges();
            return commande;
        }

        public Commandes Update(Commandes commande)
        {
            var context = new ProjetFinalDBEntities();
            context.Entry(commande).State = EntityState.Modified;
            context.SaveChanges();
            return commande;
        }
    }
}