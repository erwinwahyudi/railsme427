class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.text :description
      t.integer :harga

      t.timestamps null: false
    end
  end
end
