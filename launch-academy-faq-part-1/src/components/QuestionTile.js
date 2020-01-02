import React from 'react'

const QuestionTile = props => {
  return(
    <div className="callout primary">
      <div className="row">
        <div className="column small-2">
          <input
            onClick={props.clickHandler}
            className="button small"
            type="button"
            value="+"
          />
        </div>
        <div className="column small-10">
          <strong>Question:</strong> {props.question}
        </div>
      </div>
      <div className="row">
        <div className="column">
          <div className={props.className}>
          <strong>Answer:</strong> {props.answer}
          </div>
        </div>
      </div>
    </div>
  )
}

export default QuestionTile
