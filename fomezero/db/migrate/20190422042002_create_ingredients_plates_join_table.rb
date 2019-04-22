class CreateIngredientsPlatesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :plates, :ingredients do |t|
      t.belongs_to :ingredient, index: true
      t.belongs_to :plate, index: true
    end
  end
end
