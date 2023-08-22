import React, { useEffect, useState } from 'react';
import { IArticle } from "./IArticle";
import './Liste.css';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faArrowRight, faCartPlus} from '@fortawesome/free-solid-svg-icons';



const Liste = ({setCart}) => {


    const [articles, setArticles] = useState<IArticle[]>([]);

    const addToCart = (article) => {
        if (article) {
          setCart((prevCart) => [...prevCart, article]);
        }
      };
    useEffect(() => {
    
         fetch('http://localhost:63555/api/Article').then((res) => res.json()).then(data => setArticles(data));
            
    }, []);
    return (
        <div className='container-fluid'>
            <div className="article-grid">
                {articles.map(article => (
                    <div key={article.Id} className="card article-card">
                        <div className="image-container">
                            <img className="card-img-top" src={`./image/` + article.Image} alt={article.Nom} />
                        </div>
                            <h4 className="card-title">{article.Nom}</h4>
                            <a className="view-product" href={`Article/${article.Id}`}>
                            <FontAwesomeIcon icon={faArrowRight} />   Voir le Produit
                            </a>
                            <h6>Couleur: <div className="cir" style={{ backgroundColor: article.Couleur }}></div> {article.Couleur}</h6>
                        <h5>{article.Prix}€</h5>
                        <div className="cart-circle">
                            <a  href ='#' onClick={() => addToCart(article)} className="cart-icon">
                                <FontAwesomeIcon icon={faCartPlus} />
                            </a>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
};
export default Liste;


