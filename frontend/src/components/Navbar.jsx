import React from "react";
import { NavLink } from "react-router-dom";
import pokeball from "../assets/pictures/pokeball.png";

import "./navbar.scss";

function Navbar() {
  return (
    <div className="Navbar">
      <NavLink to="/">
        <img className="Navbar__image" src={pokeball} alt="pokeball" />
      </NavLink>
      <ul className="Navbar__liste">
        <NavLink to="/pokemon">
          <li>Pokemons</li>
        </NavLink>
        <NavLink to="/trainer">
          <li>Dresseurs</li>
        </NavLink>
        {/* <li>
          <img
            className="Navbar__liste__image"
            src={navbarImage}
            alt="wallpaper"
          />
        </li> */}
      </ul>
    </div>
  );
}

export default Navbar;
