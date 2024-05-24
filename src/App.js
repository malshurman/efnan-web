import cat from './cat.jpg';
import './App.css';

function App() {
  return (
      <div className="App">
          <header className="App-header">
              <img src={cat} className="App-logo" alt="logo"/>
              <div className="Overlay">Page under construction</div>
          </header>
      </div>
  );
}

export default App;
