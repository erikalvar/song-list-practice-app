class CreateSongReferences < ActiveRecord::Migration[6.0]
  def change
    create_table :song_references do |t|
      t.integer :reference_id
      t.integer :song_id

      t.timestamps
    end
  end
end
