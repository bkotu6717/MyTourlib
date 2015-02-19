class AddColumnReciverIdToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :receiver_id, :integer
  end
end
