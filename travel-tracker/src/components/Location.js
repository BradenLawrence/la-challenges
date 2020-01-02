import React from 'react'

const Location = props => {
  return(
    <div
      className={"box-div " + props.done}
      onClick={props.clickHandler}
    >
      {props.name}
    </div>
  )
}

export default Location
