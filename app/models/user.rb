class User < ApplicationRecord
  has_many :wines, dependent: :destroy
  has_many :favorites
  has_many :favorited_wines, :through =>  :favorites, :source => :wine


  has_many :posts, dependent: :destroy
  has_many :favorited_posts, :through => :favorites, :source => :post
  has_secure_password
end
