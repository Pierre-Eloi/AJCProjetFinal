import React from "react";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faEnvelope, faHome, faPhone } from '@fortawesome/free-solid-svg-icons';
import { faFacebookF, faInstagram, faLinkedinIn, faTwitter } from '@fortawesome/free-brands-svg-icons';

const Footer = () => {
  return (
    <footer className="bg-dark text-center">
      <div className="row text-white">
        <div className="col my-2 border-end border-white border-2">
        <strong className="text-uppercase fw-bold">Contact</strong><br />
          <div className="my-2">
            <FontAwesomeIcon icon={faHome} className="me-3" /> Rouen, 76000, FRANCE<br />
            <FontAwesomeIcon icon={faEnvelope} className="me-3" /> info@example.com<br />
            <FontAwesomeIcon icon={faPhone} className="me-3" /> +33 2 13 45 67 89<br />
          </div>
        </div>
        <div className="col my-2">
          <strong>Rejoignez-nous sur les réseaux :</strong><br />
          <div className="my-3">
            <a className="social-link me-4 text-white" href="#!">
              <FontAwesomeIcon icon={faFacebookF} />
            </a>
            <a className="social-link me-4 text-white" href="#!">
              <FontAwesomeIcon icon={faInstagram} />
            </a>
            <a className="social-link me-4 text-white" href="#!">
              <FontAwesomeIcon icon={faTwitter} />
            </a>
            <a className="social-link me-4 text-white" href="#!">
              <FontAwesomeIcon icon={faLinkedinIn} />
            </a>
          </div>                    
        </div>
      </div>
      <div className="row text-white my-2 mx-5">
      <div className="col p-2 border-top border-white">
        © 2023 Copyright
      </div>
      </div>
    </footer>
  );
}

export default Footer;