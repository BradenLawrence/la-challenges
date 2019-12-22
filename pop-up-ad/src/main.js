import './app.scss';
import React from 'react'
import ReactDOM from 'react-dom'
import Popup from './components/popup'

const App = () => {
  return(
    <div className="row">
      <h1>Popup App:</h1>
      <Popup artist="The Mars Volta" />
    </div>
  )
}

ReactDOM.render(App(), document.getElementById('app'))
