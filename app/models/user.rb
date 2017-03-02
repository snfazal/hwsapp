class User < ApplicationRecord
  has_many :wines, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :favorites
  has_many :wines, through: :favorites
  has_many :posts, through: :favorites
  has_secure_password
