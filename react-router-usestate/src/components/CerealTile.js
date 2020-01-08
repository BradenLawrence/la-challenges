import React from "react"
import { Link } from "react-router-dom"

const CerealTile = props => {
  const {id, name} = props.cereal
  return (
    <div className="cereal">
      <h2><Link to={`/cereals/${id}`}>{name}</Link></h2>
    </div>
  )
}

export default CerealTile
