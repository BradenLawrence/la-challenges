import React from 'react'

import Review from "./Review"
import ReviewForm from "./ReviewForm"

const Reviews = (props) => {
  let reviews

  if (props.reviews && props.reviews.length > 0) {

    reviews = props.reviews.map((review) => {
      return (
        <Review
          key={review.id}
          reviewData={review}
        />
      )
    })
  } else {
    reviews = `No reviews yet!`
  }

  return(
    <div>
      <div>{reviews}</div>
      <ReviewForm
        addReview={props.addReview}
      />
    </div>
  )
}

export default Reviews
