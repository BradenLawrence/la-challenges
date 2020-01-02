import React, {useState} from 'react'
import QuestionTile from './QuestionTile'

const QuestionList = props => {
  const [visibility, setVisibility] = useState(null)

  const questions = props.data.map(question => {
    const visibilityToggle = () => {
      if(visibility === question.id) {
        setVisibility(null)
      } else {
        setVisibility(question.id)
      }
    }

    const visibilityStatus = visibility === question.id

    return(
      <li>
        <QuestionTile
          question={question.question}
          answer={question.answer}
          clickHandler={visibilityToggle}
          visibilityStatus={visibilityStatus}
        />
      </li>
    )
  })

  return(
    <div className="row">
      <ul className="column small-6 small-centered">
        {questions}
      </ul>
    </div>
  )
}

export default QuestionList
