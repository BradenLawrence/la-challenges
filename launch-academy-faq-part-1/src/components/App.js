import React, {useState} from 'react';
import QuestionTile from './QuestionTile'

const App = (props) => {
  const [visibility, setVisibility] = useState(null)

  const visibilityToggle = () => {
    if(visibility === null) {
      setVisibility(1)
    } else {
      setVisibility(null)
    }
  }

  return(
    <QuestionTile
      question={props.data.question}
      answer={props.data.answer}
      clickHandler={visibilityToggle}
      className={visibility === 1 ? "visible" : "hidden"}
    />
  )
}

export default App;
