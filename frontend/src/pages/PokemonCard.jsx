/* eslint-disable jsx-a11y/img-redundant-alt */
/* eslint-disable react/prop-types */
// import PropTypes from "prop-types";
import React from "react";
import "./pokemonCard.scss";
import plantCard from "../assets/pictures/card_plant.png";

// eslint-disable-next-line react/prop-types
function PokemonCard({ pokemon }) {
  return (
    <div className="PokemonCard">
      <img src={plantCard} className="PokemonCard__emptyCard" alt="card" />
      <div className="PokemonCard__info">
        <h1 className="PokemonCard__info__id">ID {pokemon.id_pokedex}</h1>
        <h1 className="PokemonCard__info__name">{pokemon.name}</h1>
        <div className="PokemonCard__info__photoContainer">
          <img
            className="PokemonCard__info__photoContainer__photo"
            src={pokemon.photo}
            alt={`${pokemon.name} photo`}
          />
        </div>{" "}
        <h2 className="PokemonCard__info__triviaTitle">Trivia</h2>
        <div className="PokemonCard__info__trivia">
          <p className="PokemonCard__info__trivia__text">{pokemon.trivia}</p>
        </div>
      </div>
    </div>
  );
}

// PokemonCard.propTypes = {
//   pokemon: PropTypes.shape({
//     id_pokedex: PropTypes.any,
//     name: PropTypes.any,
//     photo: PropTypes.any,
//     sprite: PropTypes.any,
//     trivia: PropTypes.any,
//   }),
// };

export default PokemonCard;
