import React from "react";
import { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { IClient } from "./IClient";
import { Modal } from 'react-bootstrap';
import logo from '../assets/logo1.png';

function UserInfo(props) {
  const [client, setClient] = useState<IClient>();
  const [count, setCount] = useState(0); //use for triggering useEffect
  const [isUsed, setIsUsed] = useState();
  const [isValid, setIsValid] = useState();
  const [isDisabled, setIsDisabled] = useState(true);
  const [emailMessage, setEmailMessage] = useState("");
  const [pwdMessage, setPwdMessage] = useState(`\nPour modifier vos informations personnelles, veuillez rentrer votre mot de passe actuel`);
  const [isformsubmit, setIsFormSubmit] = useState(false);
  const [showModal, setShowModal] = useState(false);

  useEffect(() => {
    if (props.id) {
      fetch(`https://localhost:44375/api/Clients/${props.id}`)
        .then((res) => res.json())
        .then(data => setClient(data))
      setIsFormSubmit(false);
    }    
  }, [isformsubmit == true]);

  useEffect(() => {   
    if (isUsed === true) {
      setEmailMessage(`\nCet email est déjà utilisé par un autre client, veuillez en choisir un autre.`);
      setIsDisabled(true);
    }
    else if (count > 0) {
      setEmailMessage("")
      setIsDisabled(false);
    }
  }, [count])

  useEffect(() => {   
    if (isValid === true) {
      setPwdMessage("");
      setIsDisabled(false);
    }
    else if (isValid === false) {
      setPwdMessage(`\nMot de passe invalide, veuillez rentrer un mot de passe valide pour enregistrer les changements`)
      setIsDisabled(true);
    }
  }, [isValid])

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    if (value !== "")
      setClient(client => ({...client, [name]: value}));  
  };  

  const handleEmail = (event) => {
    handleChange(event);
    fetch(`https://localhost:44375/api/Clients?email=${event.target.value}&id=${props.id}`)
      .then((res) => res.json())
      .then((data) => setIsUsed(data))
      .then(() => { setCount((c) => c + 1) });    
    };

  const handlePassword = (event) => {
    fetch(`https://localhost:44375/api/Clients?&password=${event.target.value}&id=${props.id}&email=`)
      .then((res) => res.json())
      .then((data) => setIsValid(data));
  }

    const requestOptions = {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(client)
    };

    const handleSubmit = () => {
      fetch('https://localhost:44375/api/Clients', requestOptions);                 
    }

  return (
    <div className="container p-3">
      <h3 className="text-start my-4">Vos informations</h3>
      <hr />
      <div className="row justify-content-center m-3">
        <div className="card text-start m-4" style={{ width: "500px" }}>
          <div className="card-body m-3">
            <form>
              <label className="form-label mt-3">Nom</label>
              <input
                type="text"
                className="form-control"
                name="Nom"
                onChange={(e) => setClient({ ...client, Nom: e.target.value.toUpperCase() })}
                value={client && client.Nom}
              />
              <label className="form-label mt-3">Prenom</label>
              <input
                type="text"
                className="form-control"
                name="Prenom"
                onChange={(event) => handleChange(event)}
                value={client && client.Prenom}
              />
              <label className="form-label mt-3">Email</label>
              <input
                type="email"
                className="form-control"
                name="Email"
                onChange={(event) => handleEmail(event)}
                value={client && client.Email}
              />
              <div className="text-danger">
                <b>{emailMessage}</b>
              </div>
              <label className="form-label mt-3">Mot de passe actuel</label>
              <input
                type="password"
                className="form-control"
                name="Password"
                onChange={(event) => handlePassword(event)}
              />
              <div className="text-danger">
                <b>{pwdMessage}</b>
              </div>
              <label className="form-label mt-3">Nouveau mot de passe</label>
              <input
                type="password"
                className="form-control"
                name="Password"
                onChange={(event) => handleChange(event)}
              />
              <label className="form-label mt-3">Téléphone</label>
              <input
                type="text"
                className="form-control"
                name="Telephone"
                onChange={(event) => handleChange(event)}
                value={client && client.Telephone}
              />
              <label className="form-label mt-3">Numéro et nom de rue</label>
              <input
                type="text"
                className="form-control"
                name="Rue"
                onChange={(event) => handleChange(event)}
                value={client && client.Rue}
              />
              <label className="form-label mt-3">Code postal</label>
              <input
                type="text"
                className="form-control"
                name="CodePostal"
                onChange={(e) => setClient({ ...client, CodePostal: Number(e.target.value) })}
                value={client && client.CodePostal}
              />
              <label className="form-label mt-3">Ville</label>
              <input
                type="text"
                className="form-control"
                name="Ville"
                onChange={(e) => setClient({ ...client, Ville: e.target.value.toUpperCase() })}
                value={client && client.Ville}
              />
              <div className="d-grid my-4">
                <input
                  type="button"
                  className="btn btn-dark btn-block"
                  value="Modifier les informations"
                  disabled={isDisabled}
                  onClick={() => setShowModal(true)}
                />
              </div>
            </form>            
          </div>
        </div>
      </div>
      <Modal show={showModal} onHide={() => setShowModal(false)} centered >
        <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
          </Modal.Title>
        </Modal.Header>
        <Modal.Body >
          <div className="text-center mb-3">
            Voulez vous enregistrer les modifications ?
          </div>
        </Modal.Body>
        <Modal.Footer >
          <div className='my-3 mx-auto'>
            <Link to="/Accueil">
              <input
                type="button"
                className="btn btn-dark me-5"
                value={"Oui"}
                onClick={handleSubmit}
              />
              <input
                type="button"
                className="btn btn-dark"
                value={"Non"}
              />
            </Link>
          </div>
        </Modal.Footer>
      </Modal>
    </div>
  )
};

export default UserInfo;