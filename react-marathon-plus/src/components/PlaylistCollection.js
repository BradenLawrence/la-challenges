import React, {useState} from 'react'
import Playlist from './Playlist'

const PlaylistCollection = props => {
  const [playlistId, setPlaylistId] = useState(null)
  const playlists = props.playlists.map(playlist => {
    const selectPlaylist = () => {
      return setPlaylistId(playlist.id)
    }
    const selectedPlaylistStatus = (playlistId === playlist.id)
    return(
      <Playlist
        key={playlist.id}
        name={playlist.name}
        clickHandler={selectPlaylist}
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
