class CreatePersonalGalleries < ActiveRecord::Migration
  def change
    create_table :personal_galleries do |t|
      t.integer :favourite_place_id

      t.timestamps
    end
  end
end
