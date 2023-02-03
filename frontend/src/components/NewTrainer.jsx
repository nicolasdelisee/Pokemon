import React, { useState } from "react";
import axios from "axios";
import "./newTrainer.scss";

function NewTrainer() {
  const [addNewTrainer, setAddNewTrainer] = useState({
    name: null,
    photo: null,
    sprite: null,
    rival: null,
    trivia: null,
  });

  const handleOnChange = (e) => {
    setAddNewTrainer({
      ...addNewTrainer,
      [e.target.name]: e.target.value,
    });
  };
  const formToObject = (e) => {
    e.preventDefault();
    const formData = new FormData(e.target);
    const formDataObj = {};
    formData.forEach((value, key) => {
      formDataObj[key] = value;
    });
    axios.post("http://localhost:5000/api/trainer", {
      name: formDataObj.name,
      photo: formDataObj.photo,
      sprite: formDataObj.sprite,
      trivia: formDataObj.trivia,
    });
  };

  return (
    <div className="newTrainer">
      <form
        encType="multipart/form-data"
        className="newTrainer__form"
        onSubmit={formToObject}
        action=""
      >
        <div className="newTrainer__form__data">
          <input
            type="text"
            id="name"
            name="name"
            placeholder="Nom du Dresseur"
            onChange={handleOnChange}
          />
          <input
            type="text"
            id="photo"
            name="photo"
            placeholder="URL de ta photo"
            onChange={handleOnChange}
          />
          <input
            type="text"
            id="sprite"
            name="sprite"
            placeholder="URL de ton sprite"
            onChange={handleOnChange}
          />
          <input
            type="text"
            id="trivia"
            name="trivia"
            placeholder="Trivia du Dresseur"
            onChange={handleOnChange}
          />
        </div>
        <button className="newTrainer__form__button" action="" type="submit">
          Crée ton Dresseur{" "}
        </button>
      </form>
    </div>
  );
}

export default NewTrainer;
