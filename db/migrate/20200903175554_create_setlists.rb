class CreateSetlists < ActiveRecord::Migration[6.0]
  def change
    create_table :setlists do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
