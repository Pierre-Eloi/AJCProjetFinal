import React,{ useState, useEffect } from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMinus, faPlus,faArrowCircleRight } from '@fortawesome/free-solid-svg-icons';


const Panier = ({ cart, setCart, updateQuantity }) => {
    const remove = (itemId) => {
      const updatedCart = cart.filter((item) => item.Id !== itemId);
      setCart(updatedCart);
    };
  
    const increaseQuantity = (itemId) => {
      const updatedCart = cart.map((item) => {
        if (item.Id === itemId) {
          item.quantity += 1;
        }
        return item;
      });
  
      setCart(updatedCart);
    };
  
    const decreaseQuantity = (itemId) => {
      const updatedCart = cart.map((item) => {
        if (item.Id === itemId) {
          if (item.quantity > 1) {
            item.quantity -= 1;
          }
        }
        return item;
      });
  
      setCart(updatedCart);
    };
  
    return (
      <>
        <div className="container mt-5 mb-5">
          <div className="row">
            <div className="col-md-8">
              <h2>Votre Panier </h2>
              {cart
                .filter((cartItem,index, self) => {
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
                      <h6>Quantité: {cartItem.quantity}</h6>
                      <h6>Prix: {cartItem.Prix * cartItem.quantity}</h6>
                    </div>
                  </div>
                  <div>
                    <button
                      className="btn btn-dark"
                      onClick={() => remove(cartItem.Id)}
                    >
                      Supprimer cet Article
                    </button>
                    <button
                      className="btn btn-info"
                      onClick={() => increaseQuantity(cartItem.Id)}
                    >
                      <FontAwesomeIcon icon={faPlus} />
                    </button>
                    <button
                      className="btn btn-warning"
                      onClick={() => decreaseQuantity(cartItem.Id)}
                    >
                      <FontAwesomeIcon icon={faMinus} />
                    </button>
                  </div>
                </div>
                <hr />
                </>
              ))}
            </div>
            <div className="col-md-4">
              <div className=" card  mt-3 mb-5" style={{backgroundColor:'#F2F4F4'}}>
                <div className="container-fluid mt-3 mb-5 ml-3" style={{justifyContent:'center'}}>
                <h4>Récapitulatif de la Commande</h4>
                
                <hr/>
                <button className="btn btn-dark" >
                    <h6>       Passer commande        </h6>
                    <h1><FontAwesomeIcon icon={faArrowCircleRight} /> </h1>
                </button>  
                </div>
                

              </div>
            </div>
          </div>
        </div>
      </>
    );
  };
  
  export default Panier;