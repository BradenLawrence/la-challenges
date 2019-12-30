import React, { useState } from "react"
import StepTile from "./StepTile"
import ItemTile from "./ItemTile"
import FetchButton from "./FetchButton"

const InstructionsContainer = props => {
  const supplies = props.data.supplies
  const directions = props.data.directions

  const items = supplies.map(supply => {
    return (
      <ItemTile
        item={supply.item}
        key={supply.id}
        id={supply.id}
      />
    )
  })

  const [selectedId, setSelectedId] = useState(0)
  const steps = directions.map(direction => {

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

  return (
    <div>
      <h1>How To {props.data.activity}</h1>
      <h3>Supplies:</h3>
      <ul>{items}</ul>
      <h3>Instructions:</h3>
      <ol>{steps}</ol>
      <FetchButton />
    </div>
  )
}

export default InstructionsContainer
