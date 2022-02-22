class AddDescriptionToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :description, :text
  end
end
