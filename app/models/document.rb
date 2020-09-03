class Document < ApplicationRecord

  has_many :song_documents
  has_many :songs, through: song_documents

end
