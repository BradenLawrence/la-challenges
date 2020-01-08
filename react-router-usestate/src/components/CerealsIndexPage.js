import React, { useState, useEffect } from "react"

import CerealTile from "./CerealTile"

const CerealsIndexPage = (props) => {
  const [cereals, setCereals] = useState([])

  useEffect(() => {
    fetch("/api/v1/cereals")
      .then(response => response.json())
      .then(cereals => {
        setCereals(cereals)
      })
  }, [])

  let cerealTiles = cereals.map(cereal => {
    return <CerealTile key={cereal.id} cereal={cereal} />
  })

  return (
    <div className="center-bg">
      <h3 className="so-great">Cereals Are Great</h3>
      <a href="/milks">So are milks!</a>
      {cerealTiles}
    </div>
  )
}

export default CerealsIndexPage
