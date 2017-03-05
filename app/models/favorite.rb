class Favorite < ApplicationRecord
  belongs_to :wine
  # belongs_to :post
  belongs_to :user
end
