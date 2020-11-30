class TracksController < ApplicationController

   def index
        @tracks = Track.all

        sorted_tracks = @tracks.sort_by { |track| track.danceability }

        render json: sorted_tracks
    end

    def show
        @track = Track.find([params:id])

        render json: @track
    end

end
