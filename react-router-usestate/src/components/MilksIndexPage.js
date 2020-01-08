import React, { useState, useEffect } from "react"
import MilkTile from "../components/MilkTile"

const MilksIndexPage = (props) => {
  const [milks, setMilks] = useState([])
  useEffect(() => {
    fetch("/api/v1/milks")
      .then(response => response.json())
      .then(fetchedMilks => {
        setMilks(fetchedMilks)
      })
  }, [])

  let milkTiles = milks.map(milk => {
    return <MilkTile key={milk.id} milk={milk} />
  })

  return (
    <div className="center-bg">
      <h3 className="so-great">Milks Are Also Great</h3>
      <a href="/">But so are cereals</a>
      {milkTiles}
    </div>
  )
}

export default MilksIndexPage
