import React, { useState } from "react"

import AddressForm from "./AddressForm"

const App = props => {
  const [addresses, setAddresses] = useState([])

  const addNewAddress = (newAddress) => {
    setAddresses([...addresses, newAddress])
  }

  return (
    <div className="row">
      <div className="medium-6 medium-offset-3 small-12 columns">
        <AddressForm
          addNewAddress={addNewAddress}
        />
      </div>
    </div>
  )
}

export default App
