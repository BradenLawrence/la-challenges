import React, { useState } from 'react';
import LocationList from './LocationList'

const App = props => {
  return (
    <div id="wishlist-div">
      <div className="row">
        <div className="small-8 small-centered columns text-center">
          <h3>Wanderlust Wishlist</h3>
          <div className="callout">
            <LocationList
              favorite={props.data.favoritePlaceId}
              locations={props.data.places}
            />
          </div>
        </div>
      </div>
    </div>
  )
}

export default App;
