import React, {useState, useEffect} from 'react'
import Song from './Song'

const SongList = props => {
  const firstId = props.songs[0].id
  const [songId, setSongId] = useState(firstId)
  useEffect(() => {setSongId(firstId)}, [firstId])
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
