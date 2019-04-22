class AddRestaurantToPlate < ActiveRecord::Migration[5.2]
  def change
    add_reference :plates, :restaurant, foreign_key: true
  end
end
