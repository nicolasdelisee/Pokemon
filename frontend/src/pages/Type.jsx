import React, { useState, useEffect } from "react";
import axios from "axios";

function Type() {
  const [getType, setGetType] = useState([]);

  const getAllTypes = () => {
    axios
      .get("http://localhost:5000/api/type")
      .then((response) => setGetType(response.data));
  };

  useEffect(() => {
    getAllTypes();
  }, [getType]);

  return (
    <div>
      <div className="CardContainer">
        {getType.map((type) => (
          <h1>{type.name}</h1>
        ))}
      </div>
    </div>
  );
}

export default Type;
