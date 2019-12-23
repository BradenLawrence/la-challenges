import React from 'react';
import Numbers from "./Numbers"
import Picture from './Picture'

// let dateHeader = "Today's Date and Random Number"
// let date = (new Date).toString()
// let random = parseInt(Math.random() * 100)
// let pictureHeader = "Look at This Picture"
// let url = 'https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'

const Wrapper = props => {
  return (
    <div className='box wrapper'>
      <h1>{props.header}</h1>
      <p>{props.paragraph}</p>
      <Numbers
        header={dateHeader}
        date={date}
        random={random}
      />
      <Picture
        header={pictureHeader}
        url={url}
      />
    </div>
  )
}

export default Wrapper;
