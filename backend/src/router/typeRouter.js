const express = require("express");

const typeRouter = express.Router();

const typeController = require("../controllers/typeController");

typeRouter.get("/", typeController.getAllType);

module.exports = typeRouter;
