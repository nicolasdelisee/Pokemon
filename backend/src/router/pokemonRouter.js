const express = require("express");

const pokemonRouter = express.Router();

const pokemonController = require("../controllers/pokemonController");

pokemonRouter.get("/", pokemonController.getAllPokemon);

module.exports = pokemonRouter;
