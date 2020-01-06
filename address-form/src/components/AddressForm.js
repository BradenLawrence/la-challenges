import React, { useState } from "react"

const AddressForm = props => {
  const [address, setAddress] = useState({
    firstName: "",
    lastName: "",
    street: "",
    city: "",
    state: "",
    zipCode: "",
    phoneNumber: "",
    email: ""
  })

  const handleInputChange = (event) => {
    let input = event.currentTarget.id
    let value = event.currentTarget.value
    setAddress({
      ...address,
      [input]: value
    })
    console.log(value)
  }

  const handleSubmit = (event) => {
    event.preventDefault()
    console.log(address)
  }

  return (
    <form
      className="callout"
      id="shipping-address-form"
      onSubmit={handleSubmit}
    >
      <h1>Shipping Address</h1>
      <div>
        <label htmlFor="firstName">First Name:</label>
        <input
          type="text"
          id="firstName"
          name="firstName"
          value={address.firstName}
          onChange={handleInputChange}
          />
      </div>

      <div>
        <label htmlFor="lastName">Last Name:</label>
        <input
          type="text"
          id="lastName"
          name="lastName"
          value={address.lastName}
          onChange={handleInputChange}
          />
      </div>

      <label htmlFor="address">Address:</label>
      <input
        type="text"
        id="street"
        name="street"
        value={address.street}
        onChange={handleInputChange}
        />

      <div>
        <label htmlFor="city">City:</label>
        <input
          type="text"
          id="city"
          name="city"
          value={address.city}
          onChange={handleInputChange}
          />
      </div>

      <div>
        <label htmlFor="state">State:</label>
        <input
          type="text"
          id="state"
          name="state"
          value={address.state}
          onChange={handleInputChange}
          />
      </div>

      <div>
        <label htmlFor="zipCode">Zip Code:</label>
        <input
          type="text"
          id="zipCode"
          name="zipCode"
          value={address.zipCode}
          onChange={handleInputChange}
          />
      </div>

      <div>
        <label htmlFor="phoneNumber">Phone Number:</label>
        <input
          type="text"
          id="phoneNumber"
          name="phoneNumber"
          value={address.phoneNumber}
          onChange={handleInputChange}
          />
      </div>

      <div>
        <label htmlFor="email">Email:</label>
        <input
          type="text"
          id="email"
          name="email"
          value={address.email}
          onChange={handleInputChange}
          />
      </div>

      <input type="submit" className="button" value="Submit " />
    </form>
  )
}

export default AddressForm
