import { BrowserRouter, Routes, Route } from "react-router-dom";
import React,{useEffect, useState} from 'react';
import './App.css';
import SideBar from "./components/SideBar";
import LeMain from "./components/LeMain";
import Liste from "./components/Liste";
import Article from "./components/Article";
import NoPage from "./components/NoPage";
import Accueil from "./components/Accueil";


function App() {
  const showNavBar = window.location.pathname !== "/";
  const storedCart = sessionStorage.getItem('cart');
  const initialCart = storedCart ? JSON.parse(storedCart) : [];

  const [cart, setCart] = useState(initialCart);

  useEffect(() => {
    sessionStorage.setItem('cart', JSON.stringify(cart));
  }, [cart]);
  console.log("something")
  console.log("something else")
  return (
    <>
    <BrowserRouter>
    <div className="App">
    {showNavBar && <SideBar cart={cart} setCart={setCart}/>}
      <body>
      <Routes>
          <Route path="/" element={<LeMain />} />
          <Route path="*" element={<NoPage />} />
          <Route path="Accueil" element={<Accueil />} />
          <Route path="SideBar" element={<SideBar cart={cart}  setCart={setCart}/>} />
          <Route path="Liste" element={<Liste setCart={setCart} />} />
          <Route path="Article/:id" element={<Article setCart={setCart}/>} />
      </Routes> 
      </body>
      
    </div>
    </BrowserRouter>
    </>
  );
}

export default App;