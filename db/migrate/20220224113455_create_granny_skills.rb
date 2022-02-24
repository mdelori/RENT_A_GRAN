class CreateGrannySkills < ActiveRecord::Migration[6.1]
  def change
    create_table :granny_skills do |t|
      t.references :granny, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
