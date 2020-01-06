import React from 'react'

import Review from "./Review"

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
    <div>{reviews}</div>
  )
}

export default Reviews
