import React from 'react'
import GroceryItem from './GroceryItem'

const GroceryList = props => {
  let groceryItems = props.list.map(item => {
    return <li><GroceryItem key={item.id} name={item.name}/></li>
  })
  return(
    <ul>
      {groceryItems}
    </ul>
  )
}

export default GroceryList
