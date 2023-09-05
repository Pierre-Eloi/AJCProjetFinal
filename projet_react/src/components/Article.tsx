import {useParams } from "react-router-dom";
import React,{ useState, useEffect } from "react";
import { IArticle } from "./IArticle";
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faMinus, faPlus, faTruck, faUndo } from '@fortawesome/free-solid-svg-icons';


const Article = ({setCart} ,{updateQuantity}) => {
    const { id } = useParams();
    const [article, setArticle] = useState<IArticle>();
    const [isHidden, setIsHidden] = useState(true);
    
    const DescText = () => {
        setIsHidden(!isHidden);
    };
    const addToCart = () => {
         if (article) {
           setCart((prevCart) => [...prevCart, ...Array(updateQuantity).fill(article)]);
           updateQuantity=0;
         }
       };


    useEffect(() => {
         fetch(`https://localhost:44375/api/Articles/${id}`)
            .then((res) => res.json())
            .then(data => setArticle(data));
    }, []);

    const handleQuantityChange = (e) => {
        updateQuantity=(parseInt(e.target.value, 10));
      };

    return (
        <>
            {article && (
                <div className="container mt-5 mb-5">
                    <div className="row">
                        <div className="col-md-8">
                            <img className="img-fluid" src={`../assets/`+article.Image} alt={article.Nom} />
                        </div>
                        <div className="col-md-4">
                            <div className="mt-3 mb-3">
                                <h2>{article.Nom}</h2>
                                <h6>Couleur: <div className="cir" style={{ backgroundColor: article.Couleur }}></div> {article.Couleur}</h6>
                                <h6>Marque: {article.Marque}</h6>
                                <h6 >Sous-Catégorie: {article.SousCategorie}</h6>
                                <div className="d-flex align-items-center">
                                    <h6 className="mr-3 mb-0">Quantité:</h6>
                                    <input
                                            className={`form-control`}
                                            type="number"
                                            min="1"
                                            value={updateQuantity}
                                            onChange={handleQuantityChange}
                                            style={{ width: '100px' }}
                                            required
                                        />
                                </div>
                            </div>
                            <div>
                                <h4 style={{ display: 'inline-block', marginLeft: '10px' }} onClick={DescText}> Description   <FontAwesomeIcon icon={isHidden ? faPlus : faMinus} /> </h4>
                                {!isHidden && (
                                    <h6 className="mt-3">
                                        {article.Description}
                                    </h6>
                                )}
                            </div>
                            <div className="card text-center mb-3">
                                <h5 className="card-title">
                                    <FontAwesomeIcon icon={faTruck} /> Livraison gratuite
                                </h5>
                                <h5 className="card-title">
                                    <FontAwesomeIcon icon={faUndo} /> Retour gratuit
                                </h5>
                            </div>
                            <div>
                                <button className={`btn btn-dark`} onClick={addToCart}>Ajouter au panier</button>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </>
    )
}

export default Article;
