import React, { useState, useEffect } from 'react';
import Question from './Question';
import FAQForm from './FAQForm'

const FAQContainer = (props) => {
  const [questions, setQuestions] = useState([])
  const [selectedQuestion, setSelectedQuestion] = useState([])

  useEffect(() => {
    fetch('/api/v1/questions')
    .then((response) => response.json())
    .then((body) => setQuestions(body))
  }, [])

  const toggleQuestionSelect = (id) => {
    if(id === selectedQuestion) {
      setSelectedQuestion(null)
    }
    else {
      setSelectedQuestion(id)
    }
  }

  const addFaq = (faqObject) => {
    setQuestions([
      ...questions,
      faqObject
    ])
  }

  const questionListItems = questions.map(question => {
    let selected;
    if (selectedQuestion === question.id) {
      selected = true
    }

    let handleClick = () => { toggleQuestionSelect(question.id) }
    // debugger
    return(
      <Question
        key={question.id}
        question={question.question}
        answer={question.answer}
        selected={selected}
        handleClick={handleClick}
      />
    )
  })

  return(
    <div className='page'>
      <h1>We Are Here To Help</h1>
      <div className='question-list'>
        {questionListItems}
      </div>
      <FAQForm
        addFaq={addFaq}
      />

    </div>
  )

}

export default FAQContainer;
