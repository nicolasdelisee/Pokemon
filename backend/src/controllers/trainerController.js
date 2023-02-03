const trainerModel = require("../models/trainerModel");

const trainerController = {
  getAllTrainer: (req, res, next) => {
    trainerModel
      .findAll()
      .then(([trainer]) => res.status(200).send(trainer))
      .catch((err) => next(err));
  },
  deleteTrainer: (req, res, next) => {
    const { id } = req.params;
    trainerModel
      .deleteOne(id)
      .then((response) => response)
      .catch((err) => next(err));
  },
  createTrainer: (req, res) => {
    const { name, photo, sprite, rival, trivia } = req.body;
    trainerModel
      .createOne({ name, photo, sprite, rival, trivia })
      .then((result) => {
        res.status(201).send({
          id: result.insertId,
          name,
          photo,
          sprite,
          rival,
          trivia,
          message: "User created",
        });
      });
  },
};

module.exports = trainerController;
