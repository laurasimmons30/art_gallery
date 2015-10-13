class CreatePicture < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :file, null: false
      t.string :name
      t.integer :artist_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end
