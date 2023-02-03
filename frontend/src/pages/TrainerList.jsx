import React, { useEffect, useState } from "react";
import axios from "axios";
import TrainerCard from "../components/TrainerCard";
import NewTrainer from "../components/NewTrainer";
import "./trainerList.scss";

function TrainerList() {
  const [getTrainer, setGetTrainer] = useState([]);
  const [form, setForm] = useState(false);

  const openForm = () => {
    setForm(!form);
  };

  const getAllTrainer = () => {
    axios
      .get("http://localhost:5000/api/trainer")
      .then((response) => setGetTrainer(response.data));
  };

  useEffect(() => {
    getAllTrainer();
  }, [getTrainer]);
  return (
    <div className="TrainerList">
      <div className="TrainerModifier">
        <button
          onClick={openForm}
          className="TrainerModifier__add"
          type="button"
        >
          Ajoute ton Dresseur !
        </button>
        <div className="TrainerModifier__update">{form && <NewTrainer />}</div>
      </div>
      <div className="CardContainerTrainer">
        {getTrainer.map((trainer) => (
          <TrainerCard key={trainer.id} trainer={trainer} />
        ))}
      </div>
    </div>
  );
}

export default TrainerList;
