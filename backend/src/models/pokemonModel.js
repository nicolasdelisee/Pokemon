/* eslint-disable camelcase */
const database = require("../../config");

const findAll = () => {
  return database.query("SELECT * FROM pokemon").then((res) => res);
};

const findByType = (main_type) => {
  return database
    .query("SELECT * FROM pokemon WHERE main_type = ?", [main_type])
    .then(([res]) => res);
};

module.exports = {
  findAll,
  findByType,
};
