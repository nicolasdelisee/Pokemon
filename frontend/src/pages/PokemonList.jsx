import React, { useEffect, useState } from "react";
import axios from "axios";
import PokemonCard from "../components/PokemonCard";
import TypeSelector from "../components/TypeSelector";

function PokemonList() {
  const [getPokemon, setGetPokemon] = useState([]);
  const [getType, setGetType] = useState([]);
  const [selectedType, setSelectedType] = useState("");

  const getAllPokemon = () => {
    axios
      .get("http://localhost:5000/api/pokemon")
      .then((response) => setGetPokemon(response.data));
  };

  useEffect(() => {
    getAllPokemon();
  }, []);

  return (
    <div className="PokemonList">
      <TypeSelector
        getType={getType}
        setGetType={setGetType}
        setSelectedType={setSelectedType}
      />
      <div className="CardContainer">
        {getPokemon
          .filter(
            (pokemon) =>
              selectedType === "" ||
              Number(selectedType) === Number(pokemon.main_type)
          )
          .map((pokemon) => (
            <PokemonCard key={pokemon.id} pokemon={pokemon} />
          ))}
      </div>
    </div>
  );
}

export default PokemonList;
