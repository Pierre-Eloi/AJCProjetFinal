import React from 'react';
import Car1 from './image/1.jpg';
import Car2 from './image/2.jpg';
import Car3 from './image/3.jpg';
import Car4 from './image/4.jpg';
import Car5 from './image/im2.webp';
import Car6 from './image/im1.jpeg';
import v1 from './image/v1.mp4';
import v2 from './image/v2.mp4';
import { Carousel } from 'react-bootstrap';
import ReactPlayer from 'react-player';

const Accueil = () => {
  return (
    <div className='container-fluid'>

      <h2>Bienvenue à la page Principale</h2>

      
      <div className="row">
        <div className="col-md-6">
          <Carousel>
            <Carousel.Item>
              <img src={Car1} alt="Car 1" className="d-block w-100" style={{ height: '400px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car2} alt="Car 2" className="d-block w-100" style={{ height: '400px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car3} alt="Car 3" className="d-block w-100" style={{ height: '400px', objectFit: 'cover' }} />
            </Carousel.Item>
            <Carousel.Item>
              <img src={Car4} alt="Car 4" className="d-block w-100" style={{ height: '400px', objectFit: 'cover' }} />
            </Carousel.Item>
          </Carousel>
        </div>
        <div className="col-md-3">
        <ReactPlayer url={v1} playing loop controls width='100%' height='auto' />
          <img src={Car5} alt="Sample Image" className="img-fluid d-block w-100" style={{ height: '220px', objectFit: 'cover' }} />
         
        </div>
        <div className="col-md-3">
          <img src={Car6}  alt="Another Image" className="img-fluid d-block w-100" style={{ height: '220px', objectFit: 'cover' }} />
          <ReactPlayer url={v2} playing loop controls width='100%' height='auto' />
        </div>
      </div>


    </div>
  );
};

export default Accueil;