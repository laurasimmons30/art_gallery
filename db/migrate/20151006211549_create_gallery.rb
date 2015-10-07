class CreateGallery < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
    end
  end
end
