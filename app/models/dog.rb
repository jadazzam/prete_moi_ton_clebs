class Dog < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :users, through: :reservations
  has_many :reservations, dependent: :destroy
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
