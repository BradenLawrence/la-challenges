import React from 'react'

const Review = (props) => {
  return(
    <div className="row mbl">
      <div className="small-1 columns"><strong>Name</strong></div>
      <div className="small-11 columns">{props.reviewData.name}</div>

      <div className="small-1 columns"><strong>Score</strong></div>
      <div className="small-11 columns">{props.reviewData.rating / 100 * 5} stars</div>

      <div className="small-1 columns"><strong>Review</strong></div>
      <div className="small-11 columns">{props.reviewData.content}</div>
    </div>
  )
}


export default Review
