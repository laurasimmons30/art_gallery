class CreateArtistgallery < ActiveRecord::Migration
  def change
    create_table :artistgalleries do |t|
      t.integer :artist_id
      t.integer :gallery_id
    end
  end
end
