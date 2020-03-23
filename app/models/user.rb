class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
             format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
  has_secure_password
  validates :password,presence: true ,
             format: { with: VALID_PASSWORD_REGEX }

  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'

end
