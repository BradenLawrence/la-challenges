import React, { useState, useEffect } from 'react';

const LauncherList = (props) => {
  const [launchers, setLaunchers] = useState([])
  useEffect(() => {
    fetch('/api/v1/launchers')
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
        throw(error)
      }
    })
    .then(response => response.json())
    .then(body => setLaunchers(body))
  }, [])

  const launcherList = launchers.map((launcher) => {
    return(
      <li key={launcher.id}>
        {launcher.name}
      </li>
    )
  })

  return(
    <div>
      <ul>
        {launcherList}
      </ul>
    </div>
  )
}

export default LauncherList;
