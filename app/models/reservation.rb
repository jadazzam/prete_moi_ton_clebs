class Reservation < ApplicationRecord
  belongs_to :dog
  has_many :users
end
