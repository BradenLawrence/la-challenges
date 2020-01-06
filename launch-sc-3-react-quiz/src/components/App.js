import React, {useState} from 'react';
import QuestionTile from './QuestionTile'

const App = (props) => {
  const defaultQuestion = props.data.question
  const [currentQuestion, setCurrentQuestion] = useState(defaultQuestion)
  const [selectedAnswerId, setSelectedAnswerId] = useState(null)
  const [questionComplete, setQuestionComplete] = useState(false)

  const fetchRandomQuestion = () => {
    fetch("/api/v1/question.json")
    .then(response => response.json())
    .then(json => {
      setCurrentQuestion(json)
      setSelectedAnswerId(null)
      setQuestionComplete(false)
    })
  }

  let nextQuestionButton
  if(questionComplete) {
    nextQuestionButton = (
      <input
        type="button"
        value="Next Question"
        className="next"
        onClick={fetchRandomQuestion}
      />
    )
  }

  return(
    <div className="main">
      <QuestionTile
        questionData={currentQuestion}
        selectedAnswerId={selectedAnswerId}
        setSelectedAnswerId={setSelectedAnswerId}
        setQuestionComplete={setQuestionComplete}
      />
      {nextQuestionButton}
    </div>
  )
}

export default App
