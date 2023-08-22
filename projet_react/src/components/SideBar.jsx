import React, { useEffect, useState } from 'react';
import './SideBar.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faAddressBook, faBars, faHome, faInfoCircle, faQuestionCircle, faSearch, faShoppingCart, faStore, faTimes, faUser } from '@fortawesome/free-solid-svg-icons';
import logo from './image/logo1.png';
import pic1 from './image/c4.jpg';
import pic2 from './image/c3.jpg';
import pic3 from './image/c1.jpg';
import pic4 from './image/c2.jpg';
import { Link } from 'react-router-dom';
import { Modal} from 'react-bootstrap';

const SideBar = ({cart,setCart}) => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(false);
  const [showModal, setShowModal] = useState(false);
  const [input, setInput]=useState("");
  const [articles, setArticles]= useState([]);
  const [dropdownVisible, setDropdownVisible] = useState(false);

  useEffect(() => {
    fetch('http://localhost:63555/api/Article').then((res) => res.json()).then(data => setArticles(data));
      }, []);

      const filtre = articles.filter(article => {
        if (article && article.Nom && input) {
          return article.Nom.toLowerCase().includes(input.toLowerCase());
        }
        return false;
      });
   
      const removeFromCart = (indexToRemove) => {
        const updatedCart = cart.filter((_, index) => index !== indexToRemove);
        setCart(updatedCart);
      };    
  
  const openModal = () => {
    setShowModal(true);
  };

  const closeModal = () => {
    setShowModal(false);
  };
  const openNav = () => {
    setIsSidebarOpen(true);
  };

  const closeNav = () => {
    setIsSidebarOpen(false);
  };

  useEffect(() => {
    const handleOutsideClick = (event) => {
      const sidebar = document.getElementById('mySidenav');
      const mainContent = document.getElementById('main');
      if (isSidebarOpen && sidebar && !sidebar.contains(event.target) && !mainContent.contains(event.target)) {
        closeNav();
      }
    };

    document.addEventListener('click', handleOutsideClick);

    return () => {
      document.removeEventListener('click', handleOutsideClick);
    };
  }, [isSidebarOpen]);

  return (
    <div>
      <div id="mySidenav" className={`sidenav ${isSidebarOpen ? 'open' : ''}`} >
        <a href="#" className="closebtn" onClick={closeNav}>
          &times;
        </a>
        <div onClick={closeNav}>
        <div className="row ">
            <div className="col-md-6 ">
                <Link to='Accueil' >
                    <h5><FontAwesomeIcon icon={faHome} /> Accueil</h5>
                </Link>
                <Link to='Contact'>
                    <h5><FontAwesomeIcon icon={faAddressBook} /> Contact</h5>
                </Link>
            </div>
        <div className="col-md-6">
          <Link to='APropos'>         
          <h5> <FontAwesomeIcon icon={faInfoCircle} /> A Propos</h5>
        </Link>
        <Link to='Aide' >
          <h5><FontAwesomeIcon icon={faQuestionCircle} /> Aide</h5>
        </Link>
      </div>
      </div>

      <div className="row" style={{ display: 'flex', flexWrap: 'nowrap' }}>
            <div className="col-md-4" style={{ flex: '0 0 50%' }}>
            <Link to='Salon' className="d-flex flex-column align-items-center text-center">
                <img src={pic1} alt="Salon" className="img" />
                <h5>Salon</h5>
              </Link>
              <Link to='Chambre' className="d-flex flex-column align-items-center text-center">
                <img src={pic4} alt="Salon" className="img" />
                <h5>Chambre</h5>
              </Link>
      </div>
           
      <div className="col-md-4 mb-2" style={{ flex: '0 0 50%' }} >
             <Link to='Salle-a-Manger' className="d-flex flex-column align-items-center text-center">
                <img src={pic2} alt="Salle à Manger" className="img" />
                <h5>Salle à Manger</h5>
              </Link>
              <Link to='Decoration' className="d-flex flex-column align-items-center text-center">
                <img src={pic3} alt="Décoration"  className="img" />
                <h5>Décoration</h5>
              </Link>
      </div>
      </div>
      </div>
      </div>


      <div id="main" className={`main-content ${isSidebarOpen ? 'open' : ''}`} >
      <div>
        <span style={{ fontSize: '30px', cursor: 'pointer' }} onClick={openNav}>
          <FontAwesomeIcon icon={faBars} style={{ color: 'white', marginRight: '15px'}}/>
        </span>
        <a href="/">
          <img src={logo} className="logo" alt="Logo" loading="lazy" />
        </a>
        <a href="/Liste" style={{ textDecoration: "none", fontWeight: "bold", color: "white", marginLeft: "10px" }}>
        Produits
        </a>

        </div>
        
        <div className=" droite d-flex align-items-center">
        <a className="search-input text-reset me-3" style={{ display: 'flex', flexDirection: 'column' }} href="#">
        <div  style={{ display: 'flex', alignItems: 'center' }}>
    <FontAwesomeIcon icon={faSearch} style={{ color: 'black', fontSize: '1.1rem', marginRight: '10px' }} />
    <input
      className='inp'
      placeholder="Rechercher"
      value={input}
      onChange={(e) => setInput(e.target.value)}
      onFocus={() => setDropdownVisible(true)}
      onBlur={() => setDropdownVisible(false)}
    />
    </div>
    <div className={`drop ${dropdownVisible ? 'visible' : ''}`}>
    {filtre.map(article => (
      <ul key={article.Id} className="menu">
        <li key={article.Id} className="menu-item">
            <FontAwesomeIcon icon={faSearch} style={{ color: 'black', fontSize: '0.8rem', marginRight: '10px' }} />
            <a onClick={setDropdownVisible}  style={{ color: 'black', fontWeight:'bolder'}} href={`/Article/${article.Id}`}>{article.Nom}</a>
        </li>
      </ul>
    ))}
  </div>
  
</a>


      <a className="text-reset me-3" href="#">
      <div
        onClick={openModal}
        style={{position: 'relative', display: 'inline-block', cursor: 'pointer',}}>
        <FontAwesomeIcon
          icon={faShoppingCart}
          style={{ color: 'white', fontSize: '1.2rem', marginRight: '10px' }}
        />
        {cart.length > 0 && (
          <div className='compt'>
            {cart.length}
          </div>
        )}
      </div>
        </a>
        <a className="text-reset me-3" href="#">
            <FontAwesomeIcon icon={faUser} style={{ color: 'white', fontSize: '1.2rem', marginRight: '30px'}} />
        </a>
      </div>
      </div>
      <Modal show={showModal} onHide={closeModal} centered >
          <Modal.Header closeButton>
          <Modal.Title>
            <img src={logo} alt="Bootstrap Logo" width="30" height="30" className="d-inline-block align-text-top me-2" />
            VOTRE PANIER
          </Modal.Title>
          </Modal.Header>
          <Modal.Body >
           {cart.length === 0 ? (
              <div className="text-center mb-3">
                  Aucun article dans le panier pour le moment.
              </div>
            ) : (
        <div className="cart-items">
          {cart.map((item, index) => (
            <>
            <div className=" row"  key={item.Id}>
              <div className="col-md-6">
                <img className='mod' src={`/image/`+item.Image} alt="Product" />
              </div>
              <div className="col-md-6 justify-content-end" style={{ display: 'flex', alignItems: 'center' }}>
                <div>
                <h6 > Article: {item.Nom} </h6>
                <h6 > Quantité: </h6>
                <h6> Prix: {item.Prix}</h6>
                </div>
                <a  href='#' onClick={() => removeFromCart(index)} >
                  <FontAwesomeIcon icon={faTimes} style={{ color: 'black', fontSize: '1.2rem', marginLeft: '30px'}} />
                </a>
              </div>
            </div>
            <hr />
            </>
          ))}
        </div>
      )}
            <div className='text-center mb-3'>
              <a href="Acceuil" className="btn" style={{ backgroundColor: 'black', color: 'white', fontWeight: 'bold' }}>Accéder Au Panier</a>
            </div>
          </Modal.Body>
          <Modal.Footer >
          </Modal.Footer>
        </Modal>

    </div>
  );
};

export default SideBar;
