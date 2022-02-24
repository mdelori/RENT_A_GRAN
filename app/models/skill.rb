class Skill < ApplicationRecord
  has_many :grannies, through: :granny_skills
end
