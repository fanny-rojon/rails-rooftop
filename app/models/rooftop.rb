class Rooftop < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  validates :name, :description, :address, presence: true
  monetize :price_cents, numericality: { greater_than_or_equal_to: 0 }

end
