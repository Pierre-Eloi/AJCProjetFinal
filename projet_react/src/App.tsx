import { BrowserRouter, Routes, Route } from "react-router-dom";
import React,{useEffect, useState} from 'react';
import './App.css';
import SideBar from "./components/SideBar";
import LeMain from "./components/LeMain";
import Liste from "./components/Liste";
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
import UserSideBar from "./components/UserSideBar";
import UserInfo from "./components/UserInfo";

function App() {
  const showNavBar = window.location.pathname !== "/";
  const storedCart = sessionStorage.getItem('cart');
  const initialCart = storedCart ? JSON.parse(storedCart) : [];
  const [cart, setCart] = useState(initialCart || []);
  const clientJson = sessionStorage.getItem('client');
  const client = clientJson ? JSON.parse(clientJson) : null;
  const [isOpen, setIsOpen] = useState(false);
  const [quantity, setQuantity] = useState(0);

  useEffect(() => {
    sessionStorage.setItem('cart', JSON.stringify(cart));
  }, [cart]);
 
  return (
    <>
      <BrowserRouter>
        <div className="App">
          {showNavBar && <SideBar cart={cart} setCart={setCart} />}
          {client && isOpen &&
            <UserSideBar
              nom={client.Nom}
              prenom={client.Prenom}
              setIsOpen={setIsOpen}              
            />
          }
          <body>
            <Routes>
              <Route path="/" element={<LeMain />} />
              <Route path="*" element={<NoPage />} />
              <Route path="Accueil" element={<Accueil />} />
              <Route path="SideBar" element={<SideBar cart={cart} setCart={setCart}  />} />
              <Route path="Liste" element={<Liste setCart={setCart} />} />
              <Route path="login" element={<Login />} />
              <Route path="signup" element={<SignUp />} />
              <Route path="Sejour" element={<Sejour setCart={setCart} />} />
              <Route path="Salle" element={<SalleAManger setCart={setCart} />} />
              <Route path="Bureau" element={<Bureau setCart={setCart} />} />
              <Route path="Chambre" element={<Chambre setCart={setCart} />} />
              <Route path="Panier" element={<Panier cart={cart} setCart={setCart}/>} />
              {client && <Route path="userinfo" element={<UserInfo id={client.Id}/>} />}
            </Routes>
           
          </body>
          {showNavBar &&  <Footer />}
        </div>
      </BrowserRouter>
    </>
  );
}

export default App;