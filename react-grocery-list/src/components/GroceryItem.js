import React from 'react'

const GroceryItem = props => {
  return(
    <div>
      <strong>{props.name}</strong>
      <button
        type="button"
        onClick={ (event) => {
          alert('Button was clicked')
        }}>
        Delete
      </button>
    </div>
  )
}

export default GroceryItem
