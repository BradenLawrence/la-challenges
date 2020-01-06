import React from 'react'

const Song = props => {
  let selectedClass = ""
  if(props.selected) {
    selectedClass = "selected"
  }

  return(
    <div
      className={selectedClass}
      onClick={props.clickHandler}
    >{props.title} - {props.artist}</div>
  )
}

export default Song
