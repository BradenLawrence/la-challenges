import React from 'react';
import QuestionTile from './QuestionTile'

const App = (props) => {
  return(
    <QuestionTile
      question={props.data.question}
      answer={props.data.answer}
    />
  )
}

export default App;
