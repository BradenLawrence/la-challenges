import React from "react"
import { BrowserRouter, Route, Switch } from "react-router-dom"
import Greeting from "./components/Greeting"
import Goodbye from "./components/Goodbye"
import NavBar from "./components/NavBar"
import CustomGreeting from "./components/CustomGreeting"

const App = props => {
  return(
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={NavBar}/>
        <Route exact path="/greeting" component={Greeting}/>
        <Route exact path="/goodbye" component={Goodbye}/>
        <Route exact path="/customGreeting" component={CustomGreeting}/>
      </Switch>
    </BrowserRouter>
  )
}

export default App
