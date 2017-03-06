class User < ApplicationRecord
  has_many :wines, dependent: :destroy
  has_many :favorites
  has_many :favorited_wines, :through =>  :favorites, :source => :wine
  # validates :favorited_wines, uniqueness: true

  has_many :posts, dependent: :destroy
  has_secure_password
end
