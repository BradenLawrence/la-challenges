// import React from "react"
import React, { useState } from "react"
import LuncherList from "./LuncherList"
import ReservationForm from "./ReservationForm"
const defaultLunchers = ["Samantha", "Julie"]

const App = props => {
  const [lunchers, setLunchers] = useState(defaultLunchers)
  const reserveLunchSpot = (name) => {
    setLunchers(lunchers.concat(name))
  }

  return (
    <div className="row">
      <h1>Twistagram Company Update Lunch</h1>
      <LuncherList
        lunchers={lunchers} 
      />
      <ReservationForm
        onNameSubmitted={reserveLunchSpot}
      />
    </div>
  )
}

export default App
