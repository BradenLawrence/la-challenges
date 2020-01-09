import React from 'react'

const ErrorList = props => {
  debugger
  const errorListItems = props.errors.map(error => {
    return(
      <li></li>
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
