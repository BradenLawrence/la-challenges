import React, {useState} from 'react'
import PlaylistCollection from './PlaylistCollection'
import SongList from './SongList'

const App = (props) => {
  const {playlists, songs} = props.data
  const [playlistId, setPlaylistId] = useState(1)
  const selectPlaylist = (number) => {
    return setPlaylistId(number)
  }
  const activePlaylist = playlists.find(playlist => playlist.id === playlistId)
  const availableSongs = songs.filter(song => {
    return activePlaylist.songs.includes(song.id)
  })

  return (
    <div className="app row callout">
      <h2 className="title">React Music Player</h2>
      <div className="row">
        <div className="column small-6">
          <PlaylistCollection
            playlists={playlists}
            playlistId={playlistId}
            selectPlaylist={selectPlaylist}
          />
        </div>
        <div className="column small-6">
          <SongList
            songs={availableSongs}
          />
        </div>
      </div>
    </div>
  );
}

export default App
