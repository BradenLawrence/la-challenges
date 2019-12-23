import React from "react"
import ReactDOM from "react-dom"

import style from "./styles/app.scss"

import Wrapper from "./components/Wrapper"

let header = "I am the wrapper!!"
let lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Auctor elit sed vulputate mi sit amet. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent."

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
