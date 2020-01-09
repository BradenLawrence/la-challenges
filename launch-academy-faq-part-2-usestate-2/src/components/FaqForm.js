import React, { useState } from 'react'

const FaqForm = props => {
  const initialForm = {
    question: "",
    answer: ""
  }
  const [form, setForm] = useState(initialForm)

  const clearForm = () => {
    setForm(initialForm)
  }

  const onFormInputChange = (event) => {
    const key = event.currentTarget.name
    const value = event.currentTarget.value
    setForm({
      ...form,
      [key]: value
    })
  }

  const onFormSubmit = (event) => {
    event.preventDefault()
    props.addForm(form)
    clearForm()
  }

  return(
    <form onSubmit={onFormSubmit}>
      <label htmlFor="question">
        Question:
        <input
          type="text"
          id="question"
          name="question"
          value={form.question}
          onChange={onFormInputChange}
        />
      </label>
      <label htmlFor="answer">
        Answer:
        <input
          type="text"
          id="answer"
          name="answer"
          value={form.answer}
          onChange={onFormInputChange}
        />
      </label>
      <input type="submit" value="submit"/>
    </form>
  )
}

export default FaqForm
