class Reference < ApplicationRecord

  has_many :song_references, dependent: :destroy
  has_many :songs, through: setlist_songs

end
