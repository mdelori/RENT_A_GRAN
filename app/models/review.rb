class Review < ApplicationRecord
  belongs_to :granny
  validates :comment, presence: true
  validates :rating, presence: true
end
