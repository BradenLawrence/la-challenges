import React, { useState } from "react"

const AddressForm = props => {
  const defaultForm = {
    firstName:    "",
    lastName:     "",
    street:       "",
    city:         "",
    state:        "",
    zipCode:      "",
    phoneNumber:  "",
    email:        ""
  }
  const [address, setAddress] = useState(defaultForm)
  const [errors, setErrors] = useState({})

  const handleInputChange = (event) => {
    let key = event.currentTarget.id
    let value = event.currentTarget.value
    setAddress({
      ...address,
      [key]: value
    })
  }

  const clearForm = () => {
    setAddress(defaultForm)
  }

  const validFormSubmission = (input, value) => {
    let newErrors = {}
    Object.keys(address).forEach((input) => {
      if(value.trim() === ""){
        setErrors({
          ...errors,
          [input]: `${input} must not be blank.`
        })
      }
    })
  }

  const handleSubmit = (event) => {
    event.preventDefault()

    if(
      Object.entries(errors).length === 0 &&
      errors.constructor === Object
    ){
      props.addNewAddress(address)
      clearForm()
    } else {
      console.log('oops')
    }
  }

  const states = ["Alabama", "Alaska", "American Samoa", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "District of Columbia", "Florida", "Georgia", "Guam", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Minor Outlying Islands", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Northern Mariana Islands", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "U.S. Virgin Islands", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]

  const stateOptions = [""].concat(states).map((state) => {
    return <option value={state}>{state}</option>
  })

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
        <select
          type="select"
          id="state"
          name="state"
          value={address.state}
          onChange={handleInputChange}
        >
          {stateOptions}
        </select>
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
