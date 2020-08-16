class AddScoreToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :score, :integer
  end
end
