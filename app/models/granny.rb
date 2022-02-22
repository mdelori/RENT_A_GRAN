class Granny < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :born_at, presence: true
  validates :short_description, presence: true
  validates :description, presence: true
  validates :fun_fact, presence: true

end
