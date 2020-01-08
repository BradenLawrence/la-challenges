import React, { useState, useEffect } from 'react'

const LauncherShow = props => {
  const [launcher, setLauncher] = useState(0)
  useEffect(() => {
    fetch(`/api/v1/launcher/${props.match.params.id}`)
    .then(response => {
      if(response.ok){
        return response
      } else {
        throw(new Error(`${reponse.status}: ${response.statusText}`))
      }
    })
    .then(response => response.json())
    .then(body => setLauncher(body))
  }, [])
  return(
    <div>
      <h3>{launcher.name}</h3>
      <p>{launcher.bio}</p>
    </div>
  )
}

export default LauncherShow
