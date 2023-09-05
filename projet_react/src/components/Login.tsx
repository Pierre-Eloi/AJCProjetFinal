import React, {useState} from "react";
import { useNavigate } from "react-router-dom";

const Login = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();  

  const handleSubmit = (event) => {
    event.preventDefault();
    navigate("/Accueil");
  };

  return(
    <div className="container-lg p-3">
      <h3 className="text-start my-4">Compte Royal Place</h3>
      <hr />
      <div className="row justify-content-center m-3">
        <div className="card m-4" style={{ width: "400px" }}>
          <div className="card-body d-flex flex-wrap align-items-center m-3">
            <div className="w-100">
              <h5>Nouveau client ?</h5>
              <div className="d-grid mt-4">
                <input
                  type="button"
                  className="btn btn-dark btn-block"
                  value="Créer un compte"
                  onClick={() => navigate("/signup")}
                />
              </div>
            </div>
          </div>
        </div>
        <div className="card m-4" style={{width:"400px"}}>
          <div className="card-body m-3">
            <h5>Déjà client ?</h5>
            <form onSubmit={handleSubmit} className="text-start">
              <label className="form-label mt-3">E-mail (nom@domain.com)</label>
              <input
                type="email"
                className="form-control"
                onChange={(e) => setEmail(e.target.value)}
              />
              <label className="form-label mt-3">Mot de passe</label>
              <input
                type="password"
                className="form-control"
                onChange={(e) => setPassword(e.target.value)}
              />
              <div className="d-grid mt-4">
                <input
                  type="submit"
                  className="btn btn-dark btn-block"
                  value="Se connecter"
                />
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Login;