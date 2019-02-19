class Dog < ApplicationRecord
  has_many :users, through: :reservations
  has_many :reservations
  mount_uploader :photo, PhotoUploader
end
