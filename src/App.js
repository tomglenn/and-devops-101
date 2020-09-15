import React, { useEffect } from 'react';
import logo from './logo.svg';
import './App.css';

function App() {

  useEffect(() => {
    fetch('https://cat-fact.herokuapp.com/facts/random')
      .then(res => {
        console.log(res);
      })
  });

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload. HI
        </p>
        <a
          className="App-link"
          href="https://google.com"
          target="_blank"
          rel="noopener noreferrer"
        >
          Hello DevOps!
        </a>
      </header>
    </div>
  );
}

export default App;
