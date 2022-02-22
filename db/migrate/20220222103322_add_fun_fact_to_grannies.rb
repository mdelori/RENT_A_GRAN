class AddFunFactToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :fun_fact, :text
  end
end
