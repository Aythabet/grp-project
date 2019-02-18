class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations
  has_many :reviews, through: :reservation
  validates :email, uniqueness: true
  validates :pseudo, uniqueness: true
  validates :age, inclusion: { in: 18..120 }
end
