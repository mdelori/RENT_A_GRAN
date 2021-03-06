class Granny < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :granny_skills
  has_many :skills, through: :granny_skills
  has_one_attached :photo
  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :born_at, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :telephone_number, presence: true
  validates :house_number, presence: true
  validates :street, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :country_name, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_city?

  def address
    "#{house_number} #{street}, #{postcode} #{city}, #{country_name}"
  end
end
