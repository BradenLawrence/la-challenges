import React from 'react';
import List from "./List"

let listHeader = "Here Is a List"
let listItems = [
  'Asteroids',
  'Comets',
  'Moon',
  'Planets',
  'Stars',
  'Sun'
]

const Picture = props => {
  return (
    <div className='box picture'>
      <h1>{props.header}</h1>
      <img alt='Clever EEs' src={props.url}/>
      <List
        header={listHeader}
        list={listItems}
      />
    </div>
  )
}

export default Picture;
