import React from "react";
import { useParams } from "react-router-dom";
import { useState, useEffect } from "react";
import { ICommande } from "./ICommande";

function Commande(props) {
  const { id } = useParams();
  const [commande, setCommande] = useState<ICommande>();
  const [articles, setArticles] = useState([]);


  useEffect(() => {
    fetch(`https://localhost:44375/api/Commandes?idClient=${id}&id=`)
        .then((res) => res.json())
        .then(data => setCommande(data))
  }, []);

  useEffect(() => {
    if (commande) {
      setArticles(JSON.parse(commande.Articles))
    }
  }, [commande]);

  return (
    <>
      {commande && props.id === commande.IdClient &&
        <div className="container my-3">
          <table className="table table-striped">
            <thead>
              <tr>
                <th>Référence de l'article</th>
                <th>Nom</th>
                <th>Marque</th>
                <th>Prix Unitaire</th>
                <th>Quantité</th>
                <th>Prix Total</th>
              </tr>
            </thead>
            <tbody>
              {articles.length > 0 && articles.map(article => (
                <tr>
                  <td>{article.Id}</td>
                  <td>{article.Nom}</td>
                  <td>{article.Marque}</td>
                  <td>{article.Prix}€</td>
                  <td>{article.Quantite}</td>
                  <td>{article.Prix * article.Quantite}€</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      }
    </>
  )
};

export default Commande;