class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string  :title
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps null: false
    end
    add_index :albums, :artist_id
    add_index :albums, :genre_id
  end
end
