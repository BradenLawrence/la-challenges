import React from 'react';

const Box = props => {
  let boxClass = `box ${props.boxClass}`

  let paragraph
  if (props.paragraph) {
    paragraph = <p>{props.paragraph}</p>
  }

  let url
  if (props.url) {
    url = <img src={props.url} alt="accessibility!!!"/>
  }

  return (
    <div className={boxClass}>
      <h1>{props.header}</h1>
      {paragraph}
      {url}
    </div>
  )
}

export default Box;
