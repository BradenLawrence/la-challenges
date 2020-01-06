import React, {useState} from 'react'
import Playlist from './Playlist'

const PlaylistCollection = props => {
  const playlists = props.playlists.map(playlist => {
    const playlistClickHandler = () => {
      return props.selectPlaylist(playlist.id)
    }
    const selectedPlaylistStatus = (props.playlistId === playlist.id)
    return(
      <Playlist
        key={playlist.id}
        name={playlist.name}
        clickHandler={playlistClickHandler}
        selected={selectedPlaylistStatus}
      />
    )
  })

  return(
    <div>
      <h2>Playlists</h2>
      {playlists}
    </div>
  )
}

export default PlaylistCollection
