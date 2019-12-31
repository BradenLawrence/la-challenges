import React from 'react';
import QuestionList from './QuestionList'

const App = (props) => {
  return(
    <QuestionList data={props.data}/>
  )
}

export default App;
