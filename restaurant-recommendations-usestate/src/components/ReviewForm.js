import React, { useState } from 'react'

const ReviewForm = props => {
  const defaultFormData = {
    name: "",
    rating: undefined,
    content: ""
  }
  const [form, setForm] = useState(defaultFormData)

  const ratingValues = []
  for(let i = 20; i <= 100; i += 20){
    ratingValues.push(i)
  }

  const getRatingText = (number) => {
    switch (number){
      case 0:
        return ""
      case 1:
        return "1 Star"
      default:
        return `${number} Stars`
    }
  }

  const ratingOptions = [" "].concat(ratingValues).map((rating, index) => {
    return(
      <option key={rating} value={rating}>{getRatingText(index)}</option>
    )
  })

  const onInputChange = (event) => {
    const key = event.currentTarget.name
    const value = event.currentTarget.value
    setForm({
      ...form,
      [key]: value

    })
  }

  const clearForm = () => {
    setForm(defaultFormData)
  }

  const onFormSubmit = (event) => {
    event.preventDefault()
    props.addReview(form)
    clearForm()
  }

  return(
    <div>
      <h4>Add a review:</h4>
      <form onSubmit={onFormSubmit}>
        <div className="medium-11 cell">
          <label htmlFor="name">Name:
            <input
              id="name"
              name="name"
              type="text"
              value={form.name}
              onChange={onInputChange}
            />
          </label>
        </div>
        <div className="medium-11 cell">
          <label htmlFor="rating">Rating:
            <select
              id="rating"
              name="rating"
              value={form.rating}
              onChange={onInputChange}
            >
              {ratingOptions}
            </select>
          </label>
        </div>
        <div className="medium-11 cell">
          <label htmlFor="content">Review:
            <textarea
              id="content"
              name="content"
              value={form.content}
              onChange={onInputChange}
            />
          </label>
        </div>
        <input type="submit" value="submit"/>
      </form>
    </div>
  )
}

export default ReviewForm
