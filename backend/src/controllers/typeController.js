const typeModel = require("../models/typeModel");

const typeController = {
  getAllType: (req, res, next) => {
    typeModel
      .findAll()
      .then(([type]) => res.status(200).send(type))
      .catch((err) => next(err));
  },
};

module.exports = typeController;
