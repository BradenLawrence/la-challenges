import React from 'react'

const QuestionTile = props => {
  let answerClass = "hidden"
  let buttonClass = ""
  let buttonValue = "+"
  if(props.visibilityStatus === true) {
    answerClass = "visible"
    buttonClass = "open"
    buttonValue = "-"
  }

  return(
    <div className="callout primary">
      <div className="row">
        <div className="column small-2">
          <input
            onClick={props.clickHandler}
            className={"button small text-center " + buttonClass}
            type="button"
            value={buttonValue}
          />
        </div>
        <div className="column small-10">
          <strong>Question:</strong> {props.question}
        </div>
      </div>
      <div className="row">
        <div className="column">
          <div className={answerClass}>
            <strong>Answer:</strong> {props.answer}
          </div>
        </div>
      </div>
    </div>
  )
}

export default QuestionTile
