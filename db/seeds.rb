require 'pry'

Track.destroy_all

playlist = RSpotify::Playlist.find('ezqueerrodj', '5PV1oLNX0yctDS0hUlkbmx')

def create_from_spotify_track(track)
    Track.create(name: track.name, artist: track.artists[0].name, preview: track.preview_url, image: track.album.images[0]["url"], spotify_id:track.id, danceability: track.audio_features.danceability)
end

playlist.tracks.each do |track|
    create_from_spotify_track(track)
end

binding.pry