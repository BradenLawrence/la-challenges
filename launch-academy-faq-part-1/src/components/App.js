import React from 'react';
import QuestionList from './QuestionList'

const App = (props) => {
  return(
    <div>
      <h1 className="text-center">Frequently Asked Questions:</h1>
      <QuestionList data={props.data}/>
    </div>
  )
}

export default App;
