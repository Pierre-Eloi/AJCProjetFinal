import React, { useState } from 'react';
import { Link } from "react-router-dom";
import "../styles/UserSideBar.css";

const UserSideBar = (props) => {
  const handleSignOut = () => {
    sessionStorage.removeItem('client');
    props.setIsOpen(false);
  }
  return (
    
    <>
    {/* <div className="container-fluid mt-3">
    <nav className="navbar navbar-expand-lg navbar-light bg-white shadow-md">
        <div className="container-fluid p-2">
          <div className="form-inline">
            <div className="btn btn-dark" onClick={ToggleSidebar} >
              <i className="fa fa-user"></i>
            </div>
          </div>
        </div>
      </nav> */}
    <div className="sd ml-auto">
        <div className="sd-header">
          <div className="closebtn" onClick={() => props.setIsOpen(false)}>&#x2715;</div>
          <h4>{props.prenom} {props.nom}</h4>
        </div>
        <div className="sd-body">
          <Link to="/UserInfo">Mes informations</Link>
          <hr />
          <Link to="/UserCommandes">Mes commandes</Link>
          <hr />          
          <Link to="/Accueil" onClick={handleSignOut}>
            <i className="fa fa-power-off me-3" aria-hidden="true"></i>Déconnexion
          </Link>
        </div>
      </div>
    </>
      
      
  )
};

export default UserSideBar;