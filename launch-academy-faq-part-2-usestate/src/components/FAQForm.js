import React, { useState } from 'react'

const FAQForm = (props) => {
  const defaultForm = {
    question: "",
    answer: ""
  }
  const [faq, setFaq] = useState(defaultForm)

  const onFormChange = (event) => {
    const key = event.currentTarget.name
    const value = event.currentTarget.value
    setFaq({
      ...faq,
      [key]: value
    })
  }

  const clearForm = () => {
    setFaq(defaultForm)
  }

  const onFormSubmit = (event) => {
    event.preventDefault()
    props.addFaq(faq)
    clearForm()
  }

  return(
    <form
      className="callout question-list"
      onSubmit={onFormSubmit}
    >
      <h3>Add a new FAQ:</h3>
      <label htmlFor="question">
        Question:
        <input
          type="text"
          id="question"
          name="question"
          value={faq.question}
          onChange={onFormChange}
        />
      </label>
      <label htmlFor="answer">
        Answer:
        <input
          type="text"
          id="answer"
          name="answer"
          value={faq.answer}
          onChange={onFormChange}
        />
      </label>
      <input type="submit" value="submit"/>
    </form>
  )
}

export default FAQForm
