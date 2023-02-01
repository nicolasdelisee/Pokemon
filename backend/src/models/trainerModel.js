const database = require("../../config");

const findAll = () => {
  return database.query("SELECT * FROM trainer").then((res) => res);
};

module.exports = {
  findAll,
};
