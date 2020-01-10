import React from 'react'

const ErrorList = ({errors}) => {
  const inputErrors = Object.keys(errors)
  const errorListItems = inputErrors.map(field => {
    debugger
    return(
      <li key={errors[field].id}>
        {field}: {errors[field].description}
      </li>
    )
  })

  return(
    <div>
      <ul>
        {errorListItems}
      </ul>
    </div>
  )
}

export default ErrorList
