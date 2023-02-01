import React from "react";
import wallpaper from "../assets/pictures/wallpaper.jpg";
import "./home.scss";

function Home() {
  return (
    <div className="Home">
      <img className="Home__image" src={wallpaper} alt="wallpaper" />
    </div>
  );
}

export default Home;
