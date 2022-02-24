class Skill < ApplicationRecord
  has_many :granny_skills
  has_many :grannies, through: :granny_skills
end
