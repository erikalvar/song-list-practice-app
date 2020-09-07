class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :user_1_id
      t.integer :user_2_id
      t.boolean :pending

      t.timestamps
    end
  end
end
