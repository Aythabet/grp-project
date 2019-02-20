class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :escort
  has_one :review
end
