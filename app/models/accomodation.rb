class Accomodation < ApplicationRecord
  validates :available_beds, 
    presence: true,
    comparison: { greater_than: 0 }

  validates :price, 
    presence: true,
    comparison: { greater_than: 0 }

  validates :description, 
    presence: true,
    length: { minimum: 140 } #140 caracteres

  validates :welcome_message, presence: true

  belongs_to :city
  belongs_to :user
  has_many :reservations
end
