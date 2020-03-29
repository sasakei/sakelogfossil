class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :rate, numericality: {
   less_than_or_equal_to: 5,
   greater_than_or_equal_to: 1
 }, presence: true

  belongs_to :user

  mount_uploader :image, ImageUploader
  has_many :favorites
  has_many :favorite_users, through: :favorites, source: 'user'
end
