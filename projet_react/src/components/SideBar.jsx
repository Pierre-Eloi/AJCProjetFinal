import React, { useEffect, useState } from 'react';
import './SideBar.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch, faShoppingCart, faTimes, faUser } from '@fortawesome/free-solid-svg-icons';
import logo from '../assets/logo1.png';
import { Navbar, Nav, Container, Modal } from 'react-bootstrap';

const SideBar = (props) => {
  const [showModal, setShowModal] = useState(false);
  const [input, setInput] = useState("");
  const [articles, setArticles] = useState([]);
  const [dropdownVisible, setDropdownVisible] = useState(false);

  useEffect(() => {
    fetch('https://localhost:44375/api/Articles').then((res) => res.json()).then(data => setArticles(data));
  }, []);

  const filtre = articles.filter(article => {
    if (article && article.Nom && input) {
      return article.Nom.toLowerCase().includes(input.toLowerCase());
    }
    return false;
  });

  const removeFromCart = (indexToRemove) => {
    const updatedCart = [...props.cart];
    updatedCart.splice(indexToRemove, 1);
    props.setCart(updatedCart);
  };

  const openModal = () => {
    setShowModal(true);
  };

  const closeModal = () => {
    setShowModal(false);
  };

  return (
    <div>

      <Navbar expand="lg" bg="dark" variant="dark">
        <Container>
          <Navbar.Brand href="/Accueil">
            <img src={logo} className="logo" alt="Logo" loading="lazy" />
          </Navbar.Brand>
          <Nav className=" search-input" style={{ marginLeft: '50px' }}>
            <div style={{ display: 'flex', alignItems: 'center' }}>
              <FontAwesomeIcon icon={faSearch} style={{ color: 'black', fontSize: '1.1rem', marginLeft: '10px', marginRight: '10px' }} />
              <input
                className='inp'
                placeholder="Rechercher"
                value={input}
                onChange={(e) => setInput(e.target.value)}
                onFocus={() => setDropdownVisible(true)}
                onBlur={() => setDropdownVisible(false)}
              />
            </div>
            <div className={`text-start drop ${dropdownVisible ? 'visible' : ''}`}>
              {filtre.map(article => (
                <ul key={article.Id} className="menu">
                  <li key={article.Id} className="menu-item">
                    <FontAwesomeIcon icon={faSearch} style={{ color: 'black', fontSize: '0.8rem', marginRight: '10px' }} />
                    <a onClick={setDropdownVisible} style={{ color: 'black', fontWeight: 'bolder' }} href={`/Article/${article.Id}`}>{article.Nom}</a>
                  </li>
                </ul>
              ))}
            </div>
          </Nav >
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav >
              <Nav.Link href="#">
                <div
                  onClick={openModal}
                  style={{ position: 'relative', display: 'inline-block', cursor: 'pointer', }}>
                  <FontAwesomeIcon
                    icon={faShoppingCart}
                    style={{ color: 'white', fontSize: '1.2rem' }}
                  />
                  {props.cart.length > 0 && (
                    <div className='compt'>
                      {props.cart.length}
                    </div>
                  )}<div className='txt'>Votre Panier </div>
                </div> </Nav.Link>
            </Nav>
            <Nav >
            <Nav.Link href={props.client ? "#" : "/Login"} >
                  <FontAwesomeIcon
                    icon={faUser}
                    style={{ color: 'white', fontSize: '1.2rem', marginLeft: '10px' }}
                    onClick={() => props.setIsOpen(true)}
                  />
              </Nav.Link>
            </Nav>
          </Navbar.Collapse>
        </Container>
      </Navbar>
      <Navbar style={{ height: '30px' }} bg="dark" variant="dark">
        <Nav className="mx-auto">
          <Nav.Link href="/Sejour" className="nav-link-custom">
            <span className='text-light'>Séjour </span>
          </Nav.Link>
          <Nav.Link href="/Chambre" className="nav-link-custom">
            <span className='text-light'>Chambre </span>
          </Nav.Link>
          <Nav.Link href="/Salle" className="nav-link-custom">
            <span className='text-light'>Salle à Manger </span>
          </Nav.Link>
          <Nav.Link href="/Bureau" className="nav-link-custom">
            <span className='text-light'>Bureau </span>
          </Nav.Link>
        </Nav>
      </Navbar>

      {/* To Display the cart modal */}
      <Modal show={showModal} onHide={closeModal} centered >
        <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
            VOTRE PANIER
          </Modal.Title>
        </Modal.Header>
        <Modal.Body >
          {props.cart.length === 0 ? (
            <div className="text-center mb-3">
              Aucun article dans le panier pour le moment.
            </div>
          ) : (
            <div className="cart-items">
              {props.cart
                .filter((item, index, self) => {
                  return index === self.findIndex((t) => t.Id === item.Id);
                })
                .map((item, index) => (
                  <>
                    <div className=" row" key={item.Id}>
                      <div className="col-md-6">
                        <img className='mod' src={`../assets/` + item.Image} alt="Product" />
                      </div>
                      <div className="col-md-6 justify-content-end" style={{ display: 'flex', alignItems: 'center' }}>
                        <div>
                          <h6>Article: {item.Nom}</h6>
                          <h6>Marque: {item.Marque}</h6>
                          <h6>Quantité: {props.cart.filter((x) => x.Id === item.Id).length}</h6>
                          <h6>Prix: {item.Prix * (props.cart.filter((x) => x.Id === item.Id).length)} €</h6>
                        </div>
                        <a href='#' onClick={() => removeFromCart(index)} >
                          <FontAwesomeIcon icon={faTimes} style={{ color: 'black', fontSize: '1.2rem', marginLeft: '30px' }} />
                        </a>
                      </div>
                    </div>
                    <hr />
                  </>
                ))}
            </div>
          )}
          <div className='text-center mb-3'>
            <a href="/Panier" className="btn btn-dark">Accéder Au Panier</a>
          </div>
        </Modal.Body>
        <Modal.Footer >
        </Modal.Footer>
      </Modal>

    </div>
  );
};

export default SideBar;
