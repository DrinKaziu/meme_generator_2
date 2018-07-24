class User < ApplicationRecord

  has_secure_password

  validates :user_name, uniqueness: true
  validates :password, length: {minimum: 5}

  has_many :user_gifs
  has_many :gifs, through: :user_gifs
end
