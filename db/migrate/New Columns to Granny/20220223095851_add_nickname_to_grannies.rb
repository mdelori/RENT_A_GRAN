class AddNicknameToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :nickname, :string
  end
end
