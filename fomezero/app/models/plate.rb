class Plate < ApplicationRecord
  validates_presence_of :description

  has_and_belongs_to_many :ingredients
  belongs_to :restaurant
end
