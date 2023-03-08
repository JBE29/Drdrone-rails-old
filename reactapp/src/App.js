import './App.css';
import axios from "axios";
import Articles from './components/articles';

const API_URL = "http://localhost:3000/api/articles";

function getAPIData() {
  return axios.get(API_URL).then((resonse) => response.data)
}

function App() {
  return (
    <div className="App">
      <h1>Hello Dr Drone</h1>
    </div>
  );
}

export default App;
