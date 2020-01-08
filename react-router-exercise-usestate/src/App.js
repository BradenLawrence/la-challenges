import React from "react"
import { BrowserRouter, Route, Switch } from "react-router-dom"
import NavBar from "./components/NavBar"

const App = props => {
  return(
    <BrowserRouter>
      <Switch>
        <Route path="/" component={NavBar}/>
      </Switch>
    </BrowserRouter>
  )
}

export default App
