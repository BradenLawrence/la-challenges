class Album {
  constructor(id, name, artists) {
    this.id = id
    this.name = name
    this.artists = artists
    this.tracks = []
    this.durationMin = 0
  }
  updateDuration = () => {
    let durationMil = this.tracks.reduce((total, track) => {

      return total += parseInt(track.duration_ms)
    }, 0)
    this.durationMin = (durationMil / 60000).toFixed(2)
  }
  summary = () => {
    this.updateDuration()
    let summaryString = (`Name: ${this.name}
Artist(s): ${this.artists}
Duration (min.): ${this.durationMin}
Tracks:\n`)
    this.tracks.forEach(track => {
      summaryString += `- ${track.title}\n`
    })
    return summaryString
  }
}

module.exports = Album;
