class AddClassementToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :classement, :integer
  end
end
