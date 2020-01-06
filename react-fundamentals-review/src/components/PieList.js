import React, {useState} from "react"
import Pie from "./Pie"

const PieList = props => {
  const [selectedId, setSelectedId] = useState(null)

  let pies = props.pies.map(pieObject => {
    const pieClickHandler = () => {
      setSelectedId(pieObject.id)
    }
    const selectedStatus = pieObject.id === selectedId
    return(
      <li key={pieObject.id}>
        <Pie
          name={pieObject.name}
          pieClickHandler={pieClickHandler}
          selected={selectedStatus}
        />
      </li>
    )
  })

  return(
    <ul>
      {pies}
    </ul>
  )
}

export default PieList
