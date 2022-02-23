class AddStreetToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :street, :string

  end
end
