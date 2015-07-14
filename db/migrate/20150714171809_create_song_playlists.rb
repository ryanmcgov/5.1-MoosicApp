class CreateSongPlaylists < ActiveRecord::Migration
  def change
    create_table :song_playlists do |t|
      t.integer :song_id
      t.integer :playlist_id

      t.timestamps null: false
    end
    add_index :song_playlists, :song_id
    add_index :song_playlists, :playlist_id
  end
end
