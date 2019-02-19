class Reservation < ApplicationRecord
  belongs_to :dog
  has_many :user
end
