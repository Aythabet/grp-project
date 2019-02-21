class Review < ApplicationRecord
  belongs_to :reservation
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end
