import React from 'react'
import PlaylistCollection from './PlaylistCollection'
import SongList from './SongList'

const App = (props) => {
  return (
    <div className="app row callout">
      <h2 className="title">React Music Player</h2>
      <div className="row">
        <div className="column small-6">
          <PlaylistCollection
            playlists={props.data.playlists}
          />
        </div>
        <div className="column small-6">
          <SongList
            songs={props.data.songs}
          />
        </div>
      </div>
    </div>
  );
}

export default App
