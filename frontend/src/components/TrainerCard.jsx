/* eslint-disable react/prop-types */
/* eslint-disable jsx-a11y/click-events-have-key-events */
/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
import React from "react";
import axios from "axios";
import trainerImage from "../assets/pictures/cards/trainer.png";
import deleteCard from "../assets/pictures/cards/delete.png";

import "./trainerCard.scss";

function TrainerCard({ trainer }) {
  const handleDelete = () => {
    axios
      .delete(`http://localhost:5000/api/trainer/${trainer.id}`)
      .then((response) => response);
  };

  return (
    <div className="TrainerCard">
      <div className="TrainerCard__emptyCard" />
      <img src={trainerImage} className="TrainerCard__emptyCard" alt="card" />
      <div className="TrainerCard__info">
        <h1 className="TrainerCard__info__name">{trainer.name}</h1>
        <img
          src={deleteCard}
          className="TrainerCard__info__delete"
          alt="card"
          type="button"
          onClick={handleDelete}
        />
        <div className="TrainerCard__info__photoContainer">
          <img
            className="TrainerCard__info__photoContainer__photo"
            src={trainer.photo}
            alt={`${trainer.name}`}
          />
        </div>{" "}
        <h2 className="TrainerCard__info__triviaTitle">Trivia</h2>
        <div className="TrainerCard__info__trivia">
          <p className="TrainerCard__info__trivia__text">{trainer.trivia}</p>
        </div>
      </div>
    </div>
  );
}

export default TrainerCard;
