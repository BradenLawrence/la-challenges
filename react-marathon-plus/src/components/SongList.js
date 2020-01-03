import React, {useState} from 'react'
import Song from './Song'

const SongList = props => {
  const [songId, setSongId] = useState(null)

  const songs = props.songs.map(song => {
    const selectSong = () => {
      return setSongId(song.id)
    }

    const selectedSongStatus = (songId === song.id)

    return(
      <Song
        key={song.id}
        title={song.name}
        artist={song.artist}
        clickHandler={selectSong}
        selected={selectedSongStatus}
      />
    )
  })

  return(
    <div>
      <h2>Songs</h2>
      {songs}
    </div>
  )
}

export default SongList
