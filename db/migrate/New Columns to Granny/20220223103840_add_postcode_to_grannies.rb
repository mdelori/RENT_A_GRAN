class AddPostcodeToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :postcode, :string
  end
end
