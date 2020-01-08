import React from 'react'

const Restaurant = (props) => {
  let rowData;
  if (props.isSelected === true) {
    rowData = "row selected"
  } else {
    rowData = "row"
  }

  return(
    <div className={rowData}>
      <div className="small-5 columns">
        <img src={props.data.image} alt={props.data.name} />
      </div>
      <div className="small-7 columns">
        <p>
          <a href="#" onClick={props.handleClick} id={props.data.id}>
            {props.data.name}
          </a>
        </p>
        <p>{props.data.location}</p>
      </div>
    </div>
  )
}
export default Restaurant
