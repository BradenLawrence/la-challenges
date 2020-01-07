import React, { useState, useEffect } from 'react';
import Question from './Question';
import FAQForm from './FAQForm'

const FAQContainer = (props) => {
  const [questions, setQuestions] = useState([])
  const [selectedQuestion, setSelectedQuestion] = useState([])

  useEffect(() => {
    fetch('/api/v1/questions')
    .then((response) => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
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
    fetch('/api/v1/questions', {
      method: "POST",
      body: JSON.stringify(faqObject)
    })
    .then((response) => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
    .then((response) => response.json())
    .then((body) => setQuestions([...questions, body]))
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
      <FAQForm
        addFaq={addFaq}
        questions={questions}
      />

    </div>
  )

}

export default FAQContainer;
