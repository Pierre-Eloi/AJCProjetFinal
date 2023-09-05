import { BrowserRouter, Routes, Route } from "react-router-dom";
import React,{useEffect, useState} from 'react';
import './App.css';
import SideBar from "./components/SideBar";
import LeMain from "./components/LeMain";
import Liste from "./components/Liste";
import Article from "./components/Article";
import NoPage from "./components/NoPage";
import Accueil from "./components/Accueil";
import Footer from "./components/Footer";
import Login from "./components/Login";
import SignUp from "./components/SignUp";
import Sejour from "./components/Sejour";
import SalleAManger from "./components/SalleAManger";
import Bureau from "./components/Bureau";
import Chambre from "./components/Chambre";
import Panier from "./components/Panier";

function App() {
  const showNavBar = window.location.pathname !== "/";
  const storedCart = sessionStorage.getItem('cart');
  const initialCart = storedCart ? JSON.parse(storedCart) : [];
  const [cart, setCart] = useState(initialCart || []);
  const [quantity, setQuantity] = useState(0);

  useEffect(() => {
    sessionStorage.setItem('cart', JSON.stringify(cart));
  }, [cart]);

  const updateQuantity = (articleId, quantityToAdd) => {
    setCart((prevCart) => {
      const updatedCart = { ...prevCart };

      if (updatedCart.hasOwnProperty(articleId)) {
        updatedCart[articleId] += quantityToAdd;
      } else {
        updatedCart[articleId] = 1;
      }

      return updatedCart;
    });
  };
  
  return (
    <>
      <BrowserRouter>
        <div className="App">
          {showNavBar && <SideBar cart={cart} setCart={setCart} />}
          <body>
            <Routes>
              <Route path="/" element={<LeMain />} />
              <Route path="*" element={<NoPage />} />
              <Route path="Accueil" element={<Accueil />} />
              <Route path="SideBar" element={<SideBar cart={cart} setCart={setCart}  />} />
              <Route path="Liste" element={<Liste setCart={setCart} />} />
              <Route path="Article/:id" element={<Article setCart={setCart} updateQuantity={updateQuantity} />} />
              <Route path="login" element={<Login />} />
              <Route path="signup" element={<SignUp />} />
              <Route path="Sejour" element={<Sejour setCart={setCart} />} />
              <Route path="Salle" element={<SalleAManger setCart={setCart} />} />
              <Route path="Bureau" element={<Bureau setCart={setCart} />} />
              <Route path="Chambre" element={<Chambre setCart={setCart} />} />
              <Route path="Panier" element={<Panier cart={cart} setCart={setCart} updateQuantity={updateQuantity} />} />
            </Routes>
           
          </body>
          {showNavBar &&  <Footer />}
        </div>
      </BrowserRouter>
    </>
  );
}

export default App;