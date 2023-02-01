require("dotenv").config();
const express = require("express");

const app = require("./src/app");

app.use(express.json());

const port = parseInt(process.env.APP_PORT ?? "5001", 10);

app.listen(port, (err) => {
  if (err) {
    console.error("Something bad happened");
  } else {
    // eslint-disable-next-line no-restricted-syntax
    console.log(`Server is listening on ${port}`);
  }
});
