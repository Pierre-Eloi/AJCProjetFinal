import React, {useState } from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import Logo from './image/logo.png';
import { faFacebook, faTwitter, faYoutube } from '@fortawesome/free-brands-svg-icons';
import './LeMain.css';

function LeMain() {
  const [rotateLogo, setRotateLogo] = useState(false);

  const handleClick = () => {
    setTimeout(() => {
      window.location.href = '/Accueil';
    }, 1600); 

    setRotateLogo(true);
  };

  return (
    <div>
      <div className="social">
        <a className="social-link" href="#">
          <FontAwesomeIcon icon={faFacebook} />
        </a>
        <a className="social-link" href="#">
          <FontAwesomeIcon icon={faYoutube} />
        </a>
        <a className="social-link" href="#">
          <FontAwesomeIcon icon={faTwitter} />
        </a>
      </div>
      <div className="banner" onClick={handleClick}>
        <div className="content" style={{ cursor: 'pointer' }}>
          <img
            src={Logo}
            alt="Royal Place Logo"
            className={`royal mx-auto ${rotateLogo ? 'rotate' : ''}`}
          />
        </div>
      </div>
    </div>
  );
}

export default LeMain;
