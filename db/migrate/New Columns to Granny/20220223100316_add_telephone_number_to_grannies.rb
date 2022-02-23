class AddTelephoneNumberToGrannies < ActiveRecord::Migration[6.1]
  def change
    add_column :grannies, :telephone_number, :string
  end
end
