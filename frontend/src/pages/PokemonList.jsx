import React, { useEffect, useState } from "react";
import axios from "axios";
import PokemonCard from "./PokemonCard";

function PokemonList() {
  const [getPokemon, setGetPokemon] = useState([]);

  const getAllPokemon = () => {
    axios
      .get("http://localhost:5000/api/pokemon")
      .then((response) => setGetPokemon(response.data));
  };

  useEffect(() => {
    getAllPokemon();
  }, [getPokemon]);

  return (
    <div>
      <div className="CardContainer">
        {getPokemon.map((pokemon) => (
          <PokemonCard key={pokemon.id} pokemon={pokemon} />
        ))}
      </div>
    </div>
  );
}

export default PokemonList;
