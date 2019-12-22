import './app.scss';
import React from 'react'
import ReactDOM from 'react-dom'

const Popup = props => {
  return(
    <div className="callout" data-closable="slide-out-right">
      <h5 className="text-center">You have won tickets to see Taylor Swift!!</h5>
      <p className="text-center">Please enter your email so we can send you the tickets</p>
      <button className="close-button" aria-label="Dismiss alert" type="button" data-close>
        <span aria-hidden="true">&times;</span>
      </button>
      <div className="input-group">
        <span className="input-group-label">Email</span>
        <input className="input-group-field" type="number"></input>
        <div className="input-group-button">
          <input type="submit" className="button" value="Submit"></input>
        </div>
      </div>
    </div>
  )
}

const App = () => {
  return(
    <div className="row">
      <h1>Popup App:</h1>
      <Popup />
    </div>
  )
}

ReactDOM.render(App(), document.getElementById('app'))
