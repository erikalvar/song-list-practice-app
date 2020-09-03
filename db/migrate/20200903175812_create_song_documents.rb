class CreateSongDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :song_documents do |t|
      t.integer :document_id
      t.integer :song_id

      t.timestamps
    end
  end
end
