import React from 'react';
import QuestionTile from './QuestionTile'

const App = (props) => {
  return(
      <QuestionTile
        questionData={props.data.question}
      />
  )
}

export default App
