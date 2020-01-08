import React from "react"
import { Link } from "react-router-dom"

const CerealTile = props => {
  const {id, name} = props.cereal
  return (
    <div className="cereal">
      <h2>{name}</h2>
    </div>
  )
}

export default CerealTile
