import React, { useEffect, useState } from 'react';
import { IArticle } from "./IArticle";
import './Liste.css';
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faArrowRight,faArrowLeft, faCartPlus} from '@fortawesome/free-solid-svg-icons';

const Chambre = ({ setCart }) => {
    const [articles, setArticles] = useState<IArticle[]>([]);

    const addToCart = (article) => {
      if (article) {
        setCart((prevCart) => [...prevCart, article]);
      }
    };
  
    useEffect(() => {
      fetch('https://localhost:44375/api/Articles')
        .then((res) => res.json())
        .then((data) => {
          const filtre = data.filter((article) => article.Categorie === 'Chambre');
          setArticles(filtre);
        });
    }, []);
  
    const settings = {
      infinite: true,
      dots:true,
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000,
    };
  
    const subcategories = [...new Set(articles.map((article) => article.SousCategorie))];
    
    return (
      <div className='container-fluid'>
        {subcategories.map((subcategory, index) => (
          <div className='container mt-5 mb-2' key={index}>
            <h2 style={{textAlign:'center'}}>{subcategory}</h2>
            <Slider {...settings}>
              {articles
                .filter((article) => article.SousCategorie === subcategory)
                .map((article) => (
                  <div key={article.Id} className="card article-card">
                    <a href={`Article/${article.Id}`} className="image-container">
                            <img  className="card-img-top" src={`../assets/` + article.Image} alt={article.Nom} />
                        </a>
                            <h4 className="card-title">{article.Nom}</h4>
                            <a className="view-product" href={`Article/${article.Id}`}>
                            <FontAwesomeIcon icon={faArrowRight} />   Voir le Produit
                            </a>

                            <h6>Couleur: <div className="cir" style={{ backgroundColor: article.Couleur }}></div> {article.Couleur}</h6>
                            <h6> Marque: {article.Marque}</h6>
                        <h5>{article.Prix}€</h5>
                        <div className="cart-circle">
                            <a  href ='#' onClick={() => addToCart(article)} className="cart-icon">
                                <FontAwesomeIcon icon={faCartPlus} />
                            </a>
                        </div>
                    </div>
                ))}
            </Slider>
            



            </div>
        ))}
      </div>
    );
  };
  
  export default Chambre;
  