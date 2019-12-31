import React from 'react'

const QuestionTile = props => {
  return(
    <div>
      <input onClick={props.clickHandler} type="button" value="+"/>
      <p><strong>Question</strong></p>
      <p>{props.question}</p>
      <div className={props.className}>
        <p><strong>Answer</strong></p>
        <p>{props.answer}</p>
      </div>
    </div>
  )
}

export default QuestionTile
