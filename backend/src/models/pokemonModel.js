const database = require("../../config");

const findAll = () => {
  return database.query("SELECT * FROM pokemon").then((res) => res);
};

module.exports = {
  findAll,
};
