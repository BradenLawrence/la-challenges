import React from "react"
import { Link } from "react-router-dom"

const NavBar = props => {
  return (
    <div>
      <div className="navbar">
        <Link to="/">All Cereals</Link>
        <Link to="/milks">All Milks</Link>
      </div>

      <div className="content">
        <h1 className="page-title">Cereals</h1>
      </div>

      <div>(Child components go here!)</div>

      <div className="navbar">
        <p> I'm a footer</p>
      </div>
    </div>
  )
}

export default NavBar
