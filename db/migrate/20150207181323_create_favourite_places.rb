class CreateFavouritePlaces < ActiveRecord::Migration
  def change
    create_table :favourite_places do |t|
      t.string :name
      t.integer :count
      t.integer :user_id

      t.timestamps
    end
  end
end
