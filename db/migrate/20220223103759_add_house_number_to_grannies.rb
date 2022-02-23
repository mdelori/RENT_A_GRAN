class AddHouseNumberToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :house_number, :string

  end
end
