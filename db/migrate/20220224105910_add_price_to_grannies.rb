class AddPriceToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :price, :integer
  end
end
