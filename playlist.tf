resource "spotify_playlist" "name" {
  name = "Liked songs"
  tracks = ["1bxzr3JK05fMTcweGAZUHp", "1lqdPJz24AiFWeo3arwPXR"]

}
data "spotify_search_track" "anirudh" {
  artist = "Anirudh Ravichander"
}
resource "spotify_playlist" "anirudhgoat" {
  name = "Anirudh GOAT"

  tracks = [data.spotify_search_track.anirudh.tracks[0].id, data.spotify_search_track.anirudh.tracks[1].id, data.spotify_search_track.anirudh.tracks[2].id, data.spotify_search_track.anirudh.tracks[3].id]
}

