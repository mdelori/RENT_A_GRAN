class AddCountryToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :country_name, :string
  end
end
