import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import { IClient } from "./IClient";

const SignUp = () => {
  const [client, setClient] = useState({});  
  const navigate = useNavigate();
  const requestOptions = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
     body: JSON.stringify(item)
  };  

  const handleClient = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setClient(client => ({...client, [name]: value}));  
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    fetch('https://localhost:44375/api/Clients', requestOptions);
    navigate("/Accueil");                  
  }  

  return (
    <div className="container p-3">
      <h3 className="text-start my-4">Création de compte</h3>
      <hr />
      <div className="row justify-content-center m-3">
        <div className="card text-start m-4" style={{ width: "500px" }}>
          <div className="card-body m-3">
            <form onSubmit={handleSubmit}>
              <label className="form-label mt-3">Nom</label>
              <input
                type="text"
                className="form-control"
                name="Nom"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Prenom</label>
              <input
                type="text"
                className="form-control"
                name="Prenom"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Email</label>
              <input
                type="email"
                className="form-control"
                name="Email"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Mot de passe</label>
              <input
                type="password"
                className="form-control"
                name="Password"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Téléphone</label>
              <input
                type="text"
                className="form-control"
                name="Telephone"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Numéro et nom de rue</label>
              <input
                type="text"
                className="form-control"
                name="Rue"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Code postal</label>
              <input
                type="text"
                className="form-control"
                name="CodePostal"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <label className="form-label mt-3">Ville</label>
              <input
                type="text"
                className="form-control"
                name="Ville"
              // onChange={(e) => setClient(client?.Nom=e.target.value)}         
              />
              <div className="d-grid mt-4">
                <input
                  type="submit"
                  className="btn btn-dark btn-block"
                  value="Créer son compte"
                />
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}

export default SignUp;