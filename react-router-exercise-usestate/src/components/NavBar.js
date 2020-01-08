import React from "react"
import { Link } from "react-router-dom"

const NavBar = props => {
  return(
    <ul>
      <li><Link to="/greeting">Greeting</Link></li>
      <li><Link to="/goodbye">Goodbye</Link></li>
      <li><Link to="/customGreeting">Custom Greeting</Link></li>
    </ul>
  )
}

export default NavBar
