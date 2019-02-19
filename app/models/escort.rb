class Escort < ApplicationRecord
  has_many :reviews, through: :reservation
  mount_uploader :photo, PhotoUploader
end
