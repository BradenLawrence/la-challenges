import React from 'react'

const QuestionTile = props => {
  return(
    <div>
      <input type="button" value="+"/>
      <p><strong>Question</strong></p>
      <p>{props.question}</p>
      <p><strong>Answer</strong></p>
      <p>{props.answer}</p>
    </div>
  )
}

export default QuestionTile
