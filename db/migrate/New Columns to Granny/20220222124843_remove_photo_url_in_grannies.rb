class RemovePhotoUrlInGrannies < ActiveRecord::Migration[6.1]
  def change
    remove_column :grannies, :photo_url
  end
end
