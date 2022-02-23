class AddAddressToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :address, :text
  end
end
