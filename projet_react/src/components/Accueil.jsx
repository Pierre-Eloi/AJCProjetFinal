import React from 'react';
import Car1 from '../assets/1.jpg';
import Car2 from '../assets/2.jpg';
import Car3 from '../assets/3.jpg';
import Car4 from '../assets/4.jpg';
import v1 from '../assets/v1.mp4';
import v2 from '../assets/v2.mp4';
import pic1 from '../assets/c4.jpg';
import pic2 from '../assets/c3.jpg';
import pic3 from '../assets/c1.jpg';
import pic4 from '../assets/c2.jpg';
import './Accueil.css';
import { Link } from 'react-router-dom';
import { Carousel } from 'react-bootstrap';
import ReactPlayer from 'react-player';

const Accueil = () => {
  return (
    
<>
          <Carousel>
            <Carousel.Item>
              <img src={Car1} alt="Car 1" className="d-block w-100" style={{ height: '450px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car2} alt="Car 2" className="d-block w-100" style={{ height: '450px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car3} alt="Car 3" className="d-block w-100" style={{ height: '450px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car4} alt="Car 4" className="d-block w-100" style={{ height: '450px', objectFit: 'cover' }} />
            </Carousel.Item>
          </Carousel>
      <div className='container-fluid'>
        <div className='container mb-3 mt-3'>
        <h4> Découvrez notre gamme exceptionnelle de meubles pour toutes les pièces de votre maison.</h4>
      </div>

        <div className="row justify-content-center">
  <div className="hov col-md-2 mb-4">
    <Link to='/Sejour' className="card h-100 d-flex flex-column align-items-center text-center">
      <img className="card-img-top rounded h-100" src={pic1} alt="Salon" style={{ objectFit: 'cover' }} />
      <div className="card-img-overlay">
        <h5 className="text-white">Séjour</h5>
      </div>
    </Link>
  </div>
  <div className="hov col-md-2 mb-4">
    <Link to='/Chambre' className="card h-100 d-flex flex-column align-items-center text-center">
      <img className="card-img-top rounded h-100" src={pic4} alt="Chambre" style={{ objectFit: 'cover' }} />
      <div className="card-img-overlay justify-content-center">
        <h5 className="text-white">Chambre</h5>
      </div>
    </Link>
  </div>
  <div className="hov col-md-2 mb-4">
    <Link to='/Salle' className="card h-100 d-flex flex-column align-items-center text-center">
      <img className="card-img-top rounded h-100" src={pic2} alt="Salle à Manger" style={{ objectFit: 'cover' }} />
      <div className="card-img-overlay justify-content-center">
        <h5 className="text-white">Salle à Manger</h5>
      </div>
    </Link>
  </div>
  <div className="hov col-md-2 mb-4">
    <Link to='/Bureau' className="card h-100 d-flex flex-column align-items-center text-center">
      <img className="card-img-top rounded h-100" src={pic3} alt="Décoration" style={{ objectFit: 'cover' }} />
      <div className="card-img-overlay justify-content-center">
        <h5 className="text-white">Bureau</h5>
      </div>
    </Link>
  </div>
</div>


      <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center'}}>
        <ReactPlayer url={v1} playing loop controls width='50%' height='auto' />
      </div>

      <div className="row">
        
        <div className="col-md-6">
        
        </div>
        <div className="col-md-6">
          <ReactPlayer url={v2} playing loop controls width='100%' height='auto' />
        </div>
      </div>


    </div>
    </>
  );
};

export default Accueil;