class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :request_status
      t.integer :user_id

      t.timestamps
    end
  end
end
