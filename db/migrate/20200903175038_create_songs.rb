class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.string :key
      t.string :mode
      t.integer :tempo
      t.string :duration
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
