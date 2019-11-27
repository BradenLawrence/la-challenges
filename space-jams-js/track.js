class Track {
  constructor(albumId, id, title, number, duration) {
    this.albumId = albumId
    this.id = id
    this.title = title
    this.trackNumber = number
    this.durationMs = duration
  }
}

module.exports = Track
