// Do not modify this code unless you are attempting the extra challenge
let Album = require('./album');
let TRACKS = require('./space-jams-tracks');

let albums = []

TRACKS.forEach((track) => {
  // find an album by matching the album.id with track[:album_id]
  let album = albums.find(album => { return album.id === track.album_id })

  // if the album hasn't been added to the albums array yet, add it
  if (!album) {
    album = new Album(track.album_id, track.album_name, track.artists)
    albums.push(album)
  }

  // add the track to the album's tracks property
  album.tracks.push(track)
})

// print out the summary for each album
albums.forEach((album) => {
  console.log(album.summary())
})
