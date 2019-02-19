class Escort < ApplicationRecord
  has_many :reviews, through: :reservation
end
