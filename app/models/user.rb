class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :dogs
  has_many :dogs_rent, through: :reservations, source: :dogs
  has_many :reservations
  mount_uploader :photo, PhotoUploader
end
