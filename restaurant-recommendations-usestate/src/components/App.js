import React, { useState } from "react"

import Restaurant from "./Restaurant"
import ReviewList from "./ReviewList"

import defaultRestaurants from "../constants/restaurants"
import defaultReviews from "../constants/reviews"

const App = props => {
  const [restaurants, setRestaurants] = useState(defaultRestaurants)
  const [reviews, setReviews] = useState(defaultReviews)
  const [selectedId, setSelectedId] = useState(defaultRestaurants[0].id)

  const restaurantClick = event => {
    event.preventDefault()
    setSelectedId(event.target.id)
  }

  // returns the restaurant object corresponding to the restaurant that was last selected by the user
  const selectedRestaurant = () => {
    return restaurants.find(restaurant => restaurant.id === selectedId)
  }

  const restaurantComponents = restaurants.map(restaurant => {
    let isSelected = false
    if (selectedId === restaurant.id) {
      isSelected = true
    }
    return (
      <Restaurant
        key={restaurant.id}
        data={restaurant}
        isSelected={isSelected}
        handleClick={restaurantClick}
      />
    )
  })

  // of all of the reviews for all restaurants, returns only those reviews for the currently selectd restaurant
  const relevantReviews = reviews.filter(
    review => selectedId === review.restaurant_id
  )

  const addReview = (reviewObject) => {
    setReviews([...reviews, {...reviewObject, id: reviews.length+1, restaurant_id: selectedId}])
  }

  return (
    <div>
      <div className="row">
        <div className="restaurants small-2 columns">
          <h3>Restaurant</h3>
          {restaurantComponents}
        </div>
        <div className="reviews small-9 columns">
          <h3>Reviews for {selectedRestaurant().name}</h3>
          <ReviewList
            reviews={relevantReviews}
            addReview={addReview}
          />
        </div>
      </div>
    </div>
  )
}

export default App
