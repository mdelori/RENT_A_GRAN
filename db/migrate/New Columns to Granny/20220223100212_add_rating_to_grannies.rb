class AddRatingToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :rating, :integer
  end
end
