import React from 'react';

const List = props => {
  let formattedList = props.list.map(item => {
    return <li>{item}</li>
  })
  return (
    <div className='box list'>
      <h1>{props.header}</h1>
      <ul>{formattedList}</ul>
    </div>
  )
}

export default List;
