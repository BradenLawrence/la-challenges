import React, {useState} from 'react'
import AnswerTile from './AnswerTile'

const QuestionTile = (props) => {
  const answerTiles = props.questionData.answers.map((answer) => {
    const answerClickHandler = () => {
      props.setSelectedAnswerId(answer.id)
      if(props.questionData.correctAnswerId === answer.id) {
        props.setQuestionComplete(true)
      } else {
        props.setQuestionComplete(false)
      }
    }
    const selectedStatus = (props.selectedAnswerId === answer.id)
    return(
      <li key={answer.id}>
        <AnswerTile
          body={answer.body}
          clickHandler={answerClickHandler}
          selected={selectedStatus}
        />
      </li>
    )
  })

  let grade
  if(props.selectedAnswerId === null) {
    grade = null
  } else if(props.selectedAnswerId === props.questionData.correctAnswerId) {
    grade = <div className="grade correct">Correct!</div>
  } else {
    grade = <div className="grade incorrect">Incorrect!</div>
  }

  return(
    <div>
      <h2>{props.questionData.body}</h2>
      <ul>
        {answerTiles}
      </ul>
      {grade}
    </div>
  )
}

export default QuestionTile
