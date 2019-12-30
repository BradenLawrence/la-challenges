import React, { useState } from "react"
import StepTile from "./StepTile"
import ItemTile from "./ItemTile"
import FetchButton from "./FetchButton"

const InstructionsContainer = props => {
  const [favThings, setFavThings] = useState(0)
  const fetchData = () => {
    fetch("/api/v1/favorite_things.json")
      .then(response => response.json())
      .then(json => setFavThings(json))
  }

  let headerText = ""
  let items = ""
  let steps = ""
  const [selectedId, setSelectedId] = useState(0)
  if(favThings !== 0) {
    headerText = favThings.activity
    items = favThings.supplies.map(supply => {
      return (
        <ItemTile
        item={supply.item}
        key={supply.id}
        id={supply.id}
        />
      )
    })
    steps = favThings.directions.map(direction => {
      const setSelectedStepClosure = event => {
        event.preventDefault()
        setSelectedId(direction.id)
      }
      return (
        <StepTile
        step={direction.step}
        key={direction.id}
        id={direction.id}
        selectTile={setSelectedStepClosure}
        selected={selectedId === direction.id}
        />
      )
    })
  }

  return (
    <div>
      <h1>{headerText}</h1>
      <h3>Supplies:</h3>
      <ul>{items}</ul>
      <h3>Instructions:</h3>
      <ol>{steps}</ol>
      <FetchButton
        fetchData={fetchData}
      />
    </div>
  )
}

export default InstructionsContainer
