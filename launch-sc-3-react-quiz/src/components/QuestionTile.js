import React, {useState} from 'react'
import AnswerTile from './AnswerTile'

const QuestionTile = (props) => {
  const [selectedAnswerId, setSelectedAnswerId] = useState(null)

  const answerTiles = props.questionDataanswers.map((answer) => {
    const answerClickHandler = () => {
      setSelectedAnswerId(answer.id)
    }
    const selectedStatus = (selectedAnswerId === answer.id)
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
  if(selectedAnswerId === null) {
    grade = null
  } else if(selectedAnswerId === props.questionData.correctAnswerId) {
    grade = <div className="grade correct">Correct!</div>
  } else {
    grade = <div className="grade incorrect">Incorrect!</div>
  }

  return(
    <div className="main">
      <h2>{props.questionData.body}</h2>
      <ul>
        {answerTiles}
      </ul>
      {grade}
    </div>
  )
}

export default QuestionTile
