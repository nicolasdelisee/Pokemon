const pokemonModel = require("../models/pokemonModel");

const pokemonController = {
  getAllPokemon: (req, res, next) => {
    pokemonModel
      .findAll()
      .then(([pokemon]) => res.status(200).send(pokemon))
      .catch((err) => next(err));
  },
};

module.exports = pokemonController;
