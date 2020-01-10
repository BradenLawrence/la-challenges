import React, { useState } from 'react'
import ErrorList from './ErrorList'

const FaqForm = props => {
  const initialForm = {
    question: "",
    answer: ""
  }
  const [form, setForm] = useState(initialForm)
  const [errors, setErrors] = useState({})

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

  const validateForm = () => {
    setErrors({})
    let newErrors = {}
    const fields = Object.keys(form)
    fields.forEach((field, index) => {
      if(form[field].trim() === ""){
        newErrors = {
          ...newErrors,
          [field]: {
            id: index,
            description: "must not be blank"
          }
        }
      }
    })
    setErrors(newErrors)
    if(
      Object.entries(newErrors).length === 0 &&
      newErrors.constructor === Object
    ){
      return true
    } else {
      return false
    }
  }

  const onFormSubmit = (event) => {
    event.preventDefault()
    if(validateForm()){
      props.addForm(form)
      clearForm()
    } else {

    }
  }

  return(
    <div>
      <ErrorList errors={errors}/>
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
    </div>
  )
}

export default FaqForm
