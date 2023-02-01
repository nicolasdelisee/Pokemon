const express = require("express");
const cors = require("cors");
const router = require("./router");

const app = express();

app.use(
  cors({
    origin: process.env.FRONTEND_URL ?? "http://localhost:3000",
    optionsSuccessStatus: 200,
  })
);

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/api", router);
app.use("/", (req, res) => {
  res.send("Welcome  to my Pokedex");
});

module.exports = app;
