class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :songs, dependent: :destroy
  has_many :messages
  has_many :setlists, dependent: :destroy

end
