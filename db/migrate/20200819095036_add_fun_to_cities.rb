class AddFunToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :fun, :integer
  end
end
