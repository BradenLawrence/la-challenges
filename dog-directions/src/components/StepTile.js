import React from "react"

const StepTile = props => {
  return(
    <li onClick={props.selectTile} className={props.selected ? "selected" : ""}>
      {props.step}
    </li>
  )
}

export default StepTile
