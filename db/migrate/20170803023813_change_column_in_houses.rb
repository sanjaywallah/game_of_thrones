class ChangeColumnInHouses < ActiveRecord::Migration[5.1]
  def change
    rename_column :houses, :name, :house_name
  end
end
