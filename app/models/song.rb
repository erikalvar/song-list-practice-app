class Song < ApplicationRecord

  has_many :song_tags, dependent: :destroy
  has_many :tags, through: :song_tags
  belongs_to :user
  has_many :setlist_songs, dependent: :destroy
  has_many :songs, through: :setlist_songs

end
