import React from 'react'

const Playlist = props => {
  let status = props.selected ? "selected" : ""
  return(
    <div
      onClick={props.clickHandler}
      className={status}
    >
      {props.name}
    </div>
  )
}

export default Playlist
