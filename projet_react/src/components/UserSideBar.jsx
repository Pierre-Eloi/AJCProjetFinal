import React, { useState } from 'react';
import { Link } from "react-router-dom";
import "../styles/UserSideBar.css";

const UserSideBar = (props) => {
  const handleSignOut = () => {
    sessionStorage.removeItem('client');
    props.setIsOpen(false);
  }
  return (    
    <div className="sd ml-auto">
      <div className="sd-header">
        <div className="closebtn" onClick={() => props.setIsOpen(false)}>&#x2715;</div>
        <h4>{props.prenom} {props.nom}</h4>
      </div>
      <div className="sd-body">
        <Link to="/UserInfo" onClick={() => props.setIsOpen(false)}>Mes informations</Link>
        <hr />
        <Link to="/UserCommandes" onClick={() => props.setIsOpen(false)}>Mes commandes</Link>
        <hr />
        <Link to="/Accueil" onClick={handleSignOut}>
          <i className="fa fa-power-off me-3" aria-hidden="true"></i>Déconnexion
        </Link>
      </div>
    </div>
  )
};

export default UserSideBar;