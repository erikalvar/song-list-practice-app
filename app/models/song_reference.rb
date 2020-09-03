class SongReference < ApplicationRecord

  belongs_to :song
  belongs_to :references

end
