const express = require("express");

const pokemonRouter = express.Router();

const pokemonController = require("../controllers/pokemonController");

pokemonRouter.get("/", pokemonController.getAllPokemon);
pokemonRouter.get("/type/:id", pokemonController.getPokemonByType);

module.exports = pokemonRouter;
