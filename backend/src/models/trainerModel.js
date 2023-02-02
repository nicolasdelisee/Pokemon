const database = require("../../config");

const findAll = () => {
  return database.query("SELECT * FROM trainer").then((res) => res);
};

const deleteOne = (id) => {
  return database
    .query("DELETE FROM trainer WHERE id = ?", [id])
    .then((res) => res);
};

const createOne = (payload) => {
  return database
    .query("INSERT INTO trainer SET ?", [payload])
    .then((res) => res);
};

const updateOne = (payload, id) => {
  return database
    .query("UPDATE trainer SET ? WHERE id = ?", [payload, id])
    .then((res) => res);
};

module.exports = {
  findAll,
  deleteOne,
  updateOne,
  createOne,
};
