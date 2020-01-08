import React from "react"
import { BrowserRouter, Route, Switch } from "react-router-dom"
import CerealsIndexPage from "./components/CerealsIndexPage"
import MilksIndexPage from "./components/MilksIndexPage"

const App = props => {
  return (
    <BrowserRouter>
      <Switch>
        <Route path="/milk" component={MilksIndexPage}/>
        <Route path="/" component={CerealsIndexPage}/>
      </Switch>
    </BrowserRouter>
  )
}

export default App
