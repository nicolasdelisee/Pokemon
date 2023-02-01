import { Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import PokemonList from "./pages/PokemonList";
import "./style.scss";

function App() {
  return (
    <div className="App">
      {/* <Navbar /> */}
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/pokemon" element={<PokemonList />} />
        {/* <Route path="/trainer" element={<Trainer />} />
        <Route path="/type" element={<Type />} /> */}
      </Routes>

      <p>coucou</p>
    </div>
  );
}

export default App;
