const express = require("express");

const trainerRouter = express.Router();

const trainerController = require("../controllers/trainerController");

trainerRouter.get("/", trainerController.getAllTrainer);
trainerRouter.delete("/:id", trainerController.deleteTrainer);
trainerRouter.post("/", trainerController.createTrainer);

module.exports = trainerRouter;
