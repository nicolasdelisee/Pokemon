import { Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import Navbar from "./components/Navbar";
import PokemonList from "./pages/PokemonList";
import Trainer from "./pages/Trainer";
import Type from "./pages/Type";
import "./style.scss";

function App() {
  return (
    <div className="App">
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/pokemon" element={<PokemonList />} />
        <Route path="/trainer" element={<Trainer />} />
        <Route path="/type" element={<Type />} />
      </Routes>
    </div>
  );
}

export default App;
