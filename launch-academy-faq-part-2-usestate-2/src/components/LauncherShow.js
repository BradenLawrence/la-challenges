import React, { useEffect, useState } from 'react'

const LauncherShow = props => {
  const [launcher, setLauncher] = useState({
    id: '',
    name: '',
    bio: ''
  })

  useEffect(() => {
    fetch(`/api/v1/launchers/${props.match.params.id}`)
    .then(response => {
      if(response.ok){
        return response
      } else {
        const error = new Error(`${response.status}: ${response.statusText}`)
      }
    })
    .then(response => response.json())
    .then(launcherObject => {
      setLauncher(launcherObject)
    })
  }, [])

  return(
    <div>
      <h2>{launcher.name}</h2>
      <p>{launcher.bio}</p>
    </div>
  )
}

export default LauncherShow
