import React, {useState} from 'react'
import Location from './Location'

const LocationList = props => {
  const [doneId, setDoneId] = useState(null)
  const locations = props.locations.map(location => {
    const doneToggle = () => {
      setDoneId(location.id)
    }

    let doneStatus
    if(doneId === location.id) {
      doneStatus = "done"
    }

    return(
      <li key={location.id}>
        <Location
          id={location.id}
          name={location.name}
          clickHandler={doneToggle}
          done={doneStatus}
        />
      </li>
    )
  })

  let favoriteBox
  if(props.favorite === doneId) {
    favoriteBox = <div>What a beauty!</div>
  }

  return(
      <ul>
        {locations}
        {favoriteBox}
      </ul>
  )
}

export default LocationList
