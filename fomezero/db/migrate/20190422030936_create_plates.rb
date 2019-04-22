class CreatePlates < ActiveRecord::Migration[5.2]
  def change
    create_table :plates do |t|
      t.string :description
      t.float :price
      t.time :cooktime

      t.timestamps
    end
  end
end
