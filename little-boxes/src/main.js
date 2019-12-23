import React from "react"
import ReactDOM from "react-dom"

import style from "./styles/app.scss"

import Wrapper from "./components/Wrapper"

let lipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Auctor elit sed vulputate mi sit amet. Malesuada fames ac turpis egestas integer eget aliquet nibh praesent."

ReactDOM.render(
  <div>
    <Wrapper
      header="I am the wrapper!!"
      paragraph={lipsum}
    />
  </div>,
  document.getElementById("app")
)
