class Post < ApplicationRecord
  # creator
  belongs_to :user

  # # Likes
  # has_many :favorites
  # has_many :favoriting_users, :through => :favorites, :source => :user
end
