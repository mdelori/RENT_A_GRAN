class AddCityToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :city, :string
  end
end
