import React,{ useState, useEffect } from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMinus, faPlus,faArrowCircleRight } from '@fortawesome/free-solid-svg-icons';
import { ICommande } from "./ICommande";
import { Modal } from 'react-bootstrap';
import logo from '../assets/logo1.png';
import { Link } from "react-router-dom";



const Panier = (props) => {
  const [commande, setCommande] = useState<ICommande>()
  const [modalValid, setModalValid] = useState(false);
  const [modalNoValid, setModalNoValid] = useState(false);
  const [isConnected, setIsConnected] = useState(false);

  useEffect(() => {
    if(props.client) {
      setIsConnected(true);
      setCommande(c => ({...c, IdClient: props.client.Id}))
      let today = new Date();
      let day = today.getDate();
      let month = today.getMonth() + 1;
      let year = today.getFullYear();
      let date = `${day<10?`0${day}`:day}/${month<10?`0${month}`:month}/${year}`;
      setCommande(c => ({...c, Date: date}))
      setCommande(c => ({...c, PrixTotal: calculateTotal()}))
      setCommande(c => ({...c, Articles: JSON.stringify(props.cart)}))
    }
  }, []);

  const remove = (itemId) => {
    const updatedCart = props.cart.filter((item) => item.Id !== itemId);
    props.setCart(updatedCart);
  };

  const calculateTotal = () => {
    let total = 0;
    props.cart.forEach((cartItem) => {
      total += cartItem.Prix;
    });
    return total;
  };

  const requestOptions = {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(commande)
  };
    
  const handleCommande = () => {
    fetch('https://localhost:44375/api/Commandes', requestOptions);
    props.setCart([])
  }
    
  
  return (
    <>
      <div className="container mt-5 mb-5">
        <div className="row">
          <div className="col-md-8">
            <h2>Votre Panier </h2>
            {props.cart
              .filter((cartItem, index, self) => {
                return index === self.findIndex((t) => t.Id === cartItem.Id);
              })
              .map((cartItem) => (
                <>
                  <div className="row container  ml-5 mr-5" key={cartItem.Id}>
                    <div className="col-md-6">
                      <img
                        className="mod"
                        src={`../assets/` + cartItem.Image}
                        alt="Product"
                      />
                    </div>
                    <div
                      className="col-md-6 justify-content-end"
                      style={{ display: "flex", alignItems: "center" }}
                    >
                      <div>
                        <h6>Article: {cartItem.Nom}</h6>
                        <h6>Marque: {cartItem.Marque}</h6>
                        <h6>Quantité:{props.cart.filter((item) => item.Id === cartItem.Id).length}</h6>
                        <h6>Prix: {cartItem.Prix * (props.cart.filter((item) => item.Id === cartItem.Id).length)} €</h6>
                      </div>
                    </div>
                    <div>
                      <button
                        className="btn btn-dark"
                        onClick={() => remove(cartItem.Id)}
                      >
                        Supprimer cet Article
                      </button>
                      {/* <button
                      className="btn btn-info"
                    //   onClick={}
                    >
                      <FontAwesomeIcon icon={faPlus} />
                    </button>
                    <button
                      className="btn btn-warning"
                    //   onClick={}
                    >
                      <FontAwesomeIcon icon={faMinus} />
                    </button> */}
                    </div>
                  </div>
                  <hr />
                </>
              ))}
          </div>
          <div className="col-md-4">
            <div className=" card  mt-3 mb-5" style={{ backgroundColor: '#F2F4F4' }}>
              <div className="container-fluid mt-3 mb-5 ml-3" style={{ justifyContent: 'center' }}>
                <h4>Récapitulatif de la Commande</h4>
                {props.cart
                  .filter((cartItem, index, self) => {
                    return index === self.findIndex((t) => t.Id === cartItem.Id);
                  })
                  .map((cartItem) => (
                    <div className="row" key={cartItem.Id}>
                      <div className="col-md-6">{cartItem.Nom}</div>
                      <div className="col-md-6 text-right">
                        {props.cart.filter((item) => item.Id === cartItem.Id).length} x{" "}
                        {cartItem.Prix} €
                      </div>
                    </div>
                  ))}
                <hr />
                <div className="row">
                  <div className="col-md-6">Total commande :</div>
                  <div className="col-md-6 text-right">
                    {calculateTotal()} €
                  </div>
                </div>
                <hr />

                <button
                  className="btn btn-dark"
                  onClick={isConnected ? () => setModalValid(true) : () => setModalNoValid(true)} >
                  <h6>       Passer commande        </h6>
                  <h1>
                    <FontAwesomeIcon icon={faArrowCircleRight}/>
                  </h1>
                </button>
              </div>


            </div>
          </div>
        </div>
      </div>
      {/* Modal si le client est connecté */}
      <Modal show={modalValid} onHide={() => setModalValid(false)} centered >
        <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
          </Modal.Title>
        </Modal.Header>
        <Modal.Body >
          <div className="text-center mb-3">
            Voulez vous valider la commande ?
          </div>
        </Modal.Body>
        <Modal.Footer >
          <div className='my-3 mx-auto'>
            <Link to="/Accueil">
              <input
                type="button"
                className="btn btn-dark me-5"
                value={"Oui"}
                onClick={handleCommande}
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
      {/* Modal si le client n'est pas connecté */}
      <Modal show={modalNoValid} onHide={() => setModalNoValid(false)} centered >
        <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
          </Modal.Title>
        </Modal.Header>
        <Modal.Body >
          <div className="text-center mb-3">
            Vous devez vous connecter pour valider la commande !
          </div>
        </Modal.Body>
        <Modal.Footer >
          <div className='my-3 mx-auto'>
            <Link to="/Login">
              <input
                type="button"
                className="btn btn-dark me-5"
                value={"Ok"}
              />
            </Link>
          </div>
        </Modal.Footer>
      </Modal>
    </>
  );
};

export default Panier;