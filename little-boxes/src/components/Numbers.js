import React from 'react';

const Numbers = props => {
  return (
    <div className='box numbers'>
      <h1>{props.header}</h1>
      <p>
        Today's date is
        <strong>&nbsp;{props.date}&nbsp;</strong>
        and
        <em>&nbsp;{props.random}&nbsp;</em>
        is a random number.
      </p>
    </div>
  )
}

export default Numbers;
