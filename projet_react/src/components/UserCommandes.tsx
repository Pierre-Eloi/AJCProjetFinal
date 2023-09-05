import React from "react";
import { useState, useEffect } from "react";
import { ICommande } from "./ICommande";
import { Link } from "react-router-dom";

function UserCommandes(props) {
  const [commandes, setCommandes] = useState<ICommande[]>([]);

  useEffect(() => {
    if (props.id) {
      fetch(`https://localhost:44375/api/Commandes?idClient=${props.id}&id=`)
        .then((res) => res.json())
        .then(data => setCommandes(data))
    }
  }, []);

  return (
    <div className="container my-3">
      <table className="table table-striped">
        <thead>
          <tr>
            <th>Référence de commande</th>
            <th>Date</th>
            <th>Prix total</th>
            <th>Détail</th>
          </tr>
        </thead>
        <tbody>
        {commandes.length > 0 && commandes.map(commande => (
          <tr>
            <td>{commande.Id}</td>
            <td>{commande.Date}</td>
            <td>{commande.PrixTotal}</td>
            <td><Link to={`/Commande/${commande.Id}`}>Détails</Link></td>
          </tr>
        ))}          
        </tbody>
      </table>
    </div>
  )
};
export default UserCommandes;