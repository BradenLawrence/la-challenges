import React from 'react'
import AnswerTile from './AnswerTile'

const QuestionTile = (props) => {
  debugger
  const {id, body, correctAnswerId, answers} = props.questionData
  const answerTiles = answers.map((answer) => {
    return(
      <AnswerTile
        key={answer.id}
        body={answer.body}
      />
    )
  })

  return(
    <div>
      <h2>{props.questionData.body}</h2>
      {answerTiles}
    </div>
  )
}

export default QuestionTile
