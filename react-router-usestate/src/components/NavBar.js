import React from "react"
import { Switch, Route, Link } from "react-router-dom"
import CerealsIndexPage from "./CerealsIndexPage"
import MilksIndexPage from "./MilksIndexPage"
import CerealShowPage from "./CerealShowPage"

const NavBar = props => {
  return (
    <div className="row column">
      <div className="navbar">
        <Link to="/">All Cereals</Link>
      </div>
      <div className="navbar">
        <Link to="/milks">All Milks</Link>
      </div>
      <div className="content">
        <h1 className="page-title">Cereals</h1>
        <Switch>
          <Route exact path="/" component={CerealsIndexPage} />
          <Route exact path="/milks" component={MilksIndexPage} />
          <Route exact path="/cereals/:id" component={CerealShowPage} />
        </Switch>
      </div>
      <div className="navbar">
        <p>I am a footer!</p>
      </div>
    </div>
  )
}

export default NavBar
