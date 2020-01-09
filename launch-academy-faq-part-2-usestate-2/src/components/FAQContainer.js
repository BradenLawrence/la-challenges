import React, { useState, useEffect } from 'react';
import Question from './Question';
import FaqForm from './FaqForm'

const FAQContainer = (props) => {
  const [questions, setQuestions] = useState([])
  const [selectedQuestion, setSelectedQuestion] = useState([])

  useEffect(() => {
    fetch('/api/v1/questions')
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
    .then(response => response.json())
    .then(body => setQuestions(body))
  }, [])

  const addForm = (formObject) => {
    fetch('/api/v1/questions', {
      method: "POST",
      body: JSON.stringify(formObject)
    })
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
      }
    })
    .then(response => response.json())
    .then(body => setQuestions([
      ...questions,
      body
    ]))
  }

  const toggleQuestionSelect = (id) => {
    if(id === selectedQuestion) {
      setSelectedQuestion(null)
    }
    else {
      setSelectedQuestion(id)
    }
  }

  const questionListItems = questions.map(question => {
    let selected;
    if (selectedQuestion === question.id) {
      selected = true
    }

    let handleClick = () => { toggleQuestionSelect(question.id) }

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
      <div className='faq-form'>
        <FaqForm addForm={addForm}/>
      </div>
    </div>
  )

}

export default FAQContainer;
