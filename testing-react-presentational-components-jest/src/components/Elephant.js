import React from "react"
import { Link } from "react-router-dom"

const Elephant = props => {
  return (
    <div onClick={props.onClick} className="center">
      <img src={props.image} height="400" width="600" />
      <h1>{props.text}</h1>
      <hr />
      <Link to="/facts">Check out some elephant facts</Link>
    </div>
  )
}

export default Elephant
