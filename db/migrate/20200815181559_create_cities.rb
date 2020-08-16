class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :region
      t.string :place
      t.integer :air
      t.integer :security
      t.integer :food
      t.integer :weather
      t.integer :moving
      t.integer :covid

      t.timestamps
    end
  end
end
