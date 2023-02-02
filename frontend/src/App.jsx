import { Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Navbar from "./components/Navbar";
import PokemonList from "./pages/PokemonList";
import TrainerList from "./pages/TrainerList";
import "./style.scss";

function App() {
  return (
    <div className="App">
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/pokemon" element={<PokemonList />} />
        <Route path="/trainer" element={<TrainerList />} />
      </Routes>
    </div>
  );
}

export default App;
