import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { IClient } from "./IClient";
import logo from "../assets/logo1.png";
import { Modal } from 'react-bootstrap';


function SignUp () {
  const [client, setClient] = useState<IClient>();
  const [count, setCount] = useState(0); //use for triggering useEffect
  const [isUsed, setIsUsed] = useState();
  const [isDisabled, setIsDisabled] = useState(false);
  const [emailMessage, setEmailMessage] = useState("");
  const [emptyMessage, setEmptyMessage] = useState("");
  const [isEmpty, setIsEmpty] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {   
    if (isUsed === true) {
      setEmailMessage(`\nCet email est déjà utilisé, veuillez en choisir un autre ou bien vous connecter`);
      setIsDisabled(true);
    }
    else if (count > 0) {
      setEmailMessage("")
      setIsDisabled(false);
    }
  }, [count])

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setClient(client => ({...client, [name]: value}));  
  };  

  const handleEmail = (event) => {
    handleChange(event);
    fetch(`https://localhost:44375/api/Clients?email=${event.target.value}`)
      .then((res) => res.json())
      .then((data) => setIsUsed(data))
      .then(() => { setCount((c) => c + 1) });    
    };

    const requestOptions = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(client)
    };
    
    const handleSubmit = (event) => {
      event.preventDefault();
      if (client && client.Nom && client.Email && client.Password) {
        fetch('https://localhost:44375/api/Clients', requestOptions);
        setIsEmpty(false);
        setEmptyMessage("");
        openModal();
      }
      else {
        setIsEmpty(true);
        setEmptyMessage("Veuillez remplir les champs en rouge !");      
      }                      
    }

    const openModal = () => {
      setShowModal(true);
    };
  
    const closeModal = () => {
      setShowModal(false);
    };

  return (
    <div className="container p-3">
      <h3 className="text-start my-4">Création de compte</h3>
      <hr />
      <div className="row justify-content-center m-3">
        <div className="card text-start m-4" style={{ width: "500px" }}>
          <div className="card-body m-3">
            <form onSubmit={handleSubmit}>
              <label className="form-label mt-3">
                <span className={isEmpty ? 'text-danger' : 'text-body'}>Nom</span>
              </label>
              <input
                type="text"
                className="form-control"
                name="Nom"
                onChange={(e) => setClient({ ...client, Nom: e.target.value.toUpperCase() })}
              />
              <label className="form-label mt-3">Prenom</label>
              <input
                type="text"
                className="form-control"
                name="Prenom"
                onChange={(event) => handleChange(event)}
              />
              <label className="form-label mt-3">
                <span className={isEmpty ? 'text-danger' : 'text-body'}>Email</span>
              </label>
              <input
                type="email"
                className="form-control"
                name="Email"
                onChange={(event) => handleEmail(event)}
              />
              <div className="text-danger">
                <b>{emailMessage}</b>
              </div>
              <label className="form-label mt-3">
                <span className={isEmpty ? 'text-danger' : 'text-body'}>Mot de passe</span>
              </label>
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
              />
              <label className="form-label mt-3">Numéro et nom de rue</label>
              <input
                type="text"
                className="form-control"
                name="Rue"
                onChange={(event) => handleChange(event)}
              />
              <label className="form-label mt-3">Code postal</label>
              <input
                type="text"
                className="form-control"
                name="CodePostal"
                onChange={(e) => setClient({ ...client, CodePostal: Number(e.target.value) })}
              />
              <label className="form-label mt-3">Ville</label>
              <input
                type="text"
                className="form-control"
                name="Ville"
                onChange={(e) => setClient({ ...client, Ville: e.target.value.toUpperCase() })}
              />
              <div className="d-grid my-4">
                <input
                  type="submit"
                  className="btn btn-dark btn-block"
                  value="Créer son compte"
                  disabled={isDisabled}
                />
              </div>
            </form>
            <div className="text-danger">
              <b>{emptyMessage}</b>
            </div>
          </div>
        </div>
      </div>
      <Modal show={showModal} onHide={closeModal} centered >
        <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
            CREATION DE COMPTE
          </Modal.Title>
        </Modal.Header>
        <Modal.Body >
          <div className="text-center mb-3">
            Votre compte a bient été créé.<br />
            Vous pouvez maintenant vous connecter.
          </div>
        </Modal.Body>
        <Modal.Footer >
        <div className='my-3'>
              <a href="Login"className="btn btn-dark">Fermer</a>
            </div>
        </Modal.Footer>
      </Modal>
    </div>
  );
  };
  
  export default SignUp;