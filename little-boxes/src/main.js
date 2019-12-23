import React from "react"
import ReactDOM from "react-dom"

import style from "./styles/app.scss"

import Wrapper from "./components/Wrapper"

let header = "I am the wrapper!!"
let lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Auctor elit sed vulputate mi sit amet. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent."

let dateHeader = "Today's Date and Random Number"
let date = (new Date).toString()
let random = parseInt(Math.random() * 100)
let pictureHeader = "Look at This Picture"
let url = 'https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'

let listHeader = "Here Is a List"
let listItems = [
  'Asteroids',
  'Comets',
  'Moon',
  'Planets',
  'Stars',
  'Sun'
]

ReactDOM.render(
  <div>
    <Box
      boxClass='wrapper'
      header={header}
      paragraph={lipsum}
    />
  </div>,
  document.getElementById("app")
)

// <Wrapper
//   header={header}
//   paragraph={lipsum}
// />
