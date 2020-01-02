import React, {useState} from 'react'
import Location from './Location'

const LocationList = props => {
  const [doneIds, setDoneId] = useState([])
  const locations = props.locations.map(location => {
    const doneToggle = () => {
      if(doneIds.includes(location.id)) {
        let existingIndex = doneIds.indexOf(location.id)
        let updatedArray = doneIds.slice()
        updatedArray.splice(existingIndex, 1)
        setDoneId(updatedArray)
      } else {
        setDoneId([...doneIds, location.id])
      }
    }

    let doneStatus
    if(doneIds.includes(location.id)) {
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
  if(doneIds.includes(props.favorite)) {
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
