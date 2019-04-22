class Restaurant < ApplicationRecord
  validates_presence_of :name, :address, :fone

  has_many :plates
end
