class RemoveAddressFromGrannies < ActiveRecord::Migration[6.1]
  def change
    remove_column :grannies, :address, :text
  end
end
