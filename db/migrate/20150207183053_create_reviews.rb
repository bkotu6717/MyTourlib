class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.integer :favourite_place_id
      t.integer :tour_id
      t.timestamps
    end
  end
end
