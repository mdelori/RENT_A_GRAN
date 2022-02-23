class Granny < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :nickname, presence: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :born_at, presence: true
  validates :description, presence: true
  validates :country_name, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_city?

  def address
    "#{house_number} #{street}, #{postcode} #{city}, #{country_name}"
  end
end
