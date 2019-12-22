import React from 'react'

const Popup = props => {
  const handleExit = event => {
    window.confirm(`Are you sure you want to give up your ${props.artist} tickets?`)
  }

  const handleSubmit = event => {
    event.preventDefault()
    console.log("Form submitted")
  }

  return(
    <div className="callout" data-closable="slide-out-right">
      <h5 className="text-center">You have won tickets to see {props.artist}!!</h5>
      <p className="text-center">
        Please enter your email so we can send you the tickets
      </p>
      <button
        onClick={handleExit}
        className="close-button"
        aria-label="Dismiss alert"
        type="button"
        data-close>
        <span aria-hidden="true"><i className="fas fa-times"></i></span>
      </button>
      <div className="input-group">
        <span className="input-group-label">Email</span>
        <input className="input-group-field" type="email"></input>
        <div className="input-group-button">
          <input
            onClick={handleSubmit}
            type="submit"
            className="button"
            value="Submit">
          </input>
        </div>
      </div>
    </div>
  )
}

export default Popup
