class AddDanceabilityColumnToTracks < ActiveRecord::Migration[6.0]
  def change
    add_column :tracks, :danceability, :float
  end
end
