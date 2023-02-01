const express = require("express");

const router = express.Router();

const pokemonRouter = require("./pokemonRouter");
const trainerRouter = require("./trainerRouter");
const typeRouter = require("./typeRouter");

router.use("/pokemon", pokemonRouter);
router.use("/trainer", trainerRouter);
router.use("/type", typeRouter);

module.exports = router;
