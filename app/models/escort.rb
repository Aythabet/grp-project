class Escort < ApplicationRecord
  has_many :reservations
  has_many :reviews, through: :reservations
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
