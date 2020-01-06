import React from 'react'

const AnswerTile = (props) => {
  const buttonClass = props.selected ? "selected" : ""
  return(
    <input
      type="button"
      value={props.body}
      onClick={props.clickHandler}
      className={buttonClass}
    />
  )
}

export default AnswerTile
