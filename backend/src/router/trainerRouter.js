const express = require("express");

const trainerRouter = express.Router();

const trainerController = require("../controllers/trainerController");

trainerRouter.get("/", trainerController.findAll);

module.exports = trainerRouter;
