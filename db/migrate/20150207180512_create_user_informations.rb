class CreateUserInformations < ActiveRecord::Migration
  def change
    create_table :user_informations do |t|
      t.string :profile_name
      t.date :dob
      t.text :birth_place
      t.string :qualification
      t.text :current_place
      t.integer :user_id

      t.timestamps
    end
  end
end
