const database = require("../../config");

const findAll = () => {
  return database.query("SELECT * FROM type").then((res) => res);
};

module.exports = {
  findAll,
};
