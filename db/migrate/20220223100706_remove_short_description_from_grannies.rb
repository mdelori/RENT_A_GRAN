class RemoveShortDescriptionFromGrannies < ActiveRecord::Migration[6.1]
  def change
    remove_column :grannies, :short_description, :text
  end
end
