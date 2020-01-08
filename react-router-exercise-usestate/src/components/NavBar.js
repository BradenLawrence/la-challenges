import React from "react"
import { Link, Route, Switch } from "react-router-dom"
import Greeting from "./Greeting"
import Goodbye from "./Goodbye"
import CustomGreeting from "./CustomGreeting"

const NavBar = props => {
  return(
    <div>
      <ul>
        <li><Link to="/greeting">Greeting</Link></li>
        <li><Link to="/goodbye">Goodbye</Link></li>
        <li><Link to="/customGreeting">Custom Greeting</Link></li>
      </ul>
      <Switch>
        <Route exact path="/greeting" component={Greeting}/>
        <Route exact path="/goodbye" component={Goodbye}/>
        <Route exact path="/customGreeting" component={CustomGreeting}/>
      </Switch>
    </div>
  )
}

export default NavBar
