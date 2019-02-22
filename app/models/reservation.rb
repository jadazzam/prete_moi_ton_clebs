class Reservation < ApplicationRecord
  belongs_to :dog
  has_one :user
end
