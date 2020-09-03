class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.integer :song_id
      t.string :url

      t.timestamps
    end
  end
end
