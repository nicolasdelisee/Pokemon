/* eslint-disable react/jsx-props-no-spreading */
/* eslint-disable react/prop-types */
/* eslint-disable jsx-a11y/no-noninteractive-element-interactions */
/* eslint-disable jsx-a11y/click-events-have-key-events */
// import PropTypes from "prop-types";
import React, { useEffect } from "react";
import axios from "axios";
import "./typeSelector.scss";

function TypeSelector({ getType, setGetType, setSelectedType }) {
  const handleClick = (e) => {
    setSelectedType(e.target.id);
  };

  const getAllTypes = () => {
    axios
      .get("http://localhost:5000/api/type")
      .then((response) => setGetType(response.data));
  };
  useEffect(() => {
    getAllTypes();
  }, []);

  return (
    <div className="TypeSelector">
      <div className="TypeSelector__type">
        {getType.map((types) => (
          <img
            {...types}
            key={types.id}
            onClick={handleClick}
            className="TypeSelector__image"
            src={types.image}
            alt={types.name}
          />
        ))}
      </div>
    </div>
  );
}

// TypeSelector.propTypes = {
//   getType: PropTypes.shape({
//     map: PropTypes.func,
//   }),
//   setGetType: PropTypes.func,
//   setSelectedType: PropTypes.func,
// };

export default TypeSelector;
