import React from 'react';

const Pie = props => {
  return(
    <span
      className={props.selected ? "selected" : ""}
      onClick={props.pieClickHandler}
      key={props.id}>
      {props.name}
    </span>
  )
}

export default Pie;
