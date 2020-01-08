import React, { useState, useEffect } from "react"

import CerealInformation from "./CerealInformation"

const CerealShowContainer = (props) => {
  const [cereal, setCereal] = useState({})
  const cerealId = props.match.params.id

  useEffect(() => {
    fetch(`/api/v1/cereals/${cerealId}`)
      .then(response => response.json())
      .then(fetchedCereal => {
        setCereal(fetchedCereal)
      })
    }, [])

  return (<CerealInformation cereal={cereal} />)
}

export default CerealShowContainer
