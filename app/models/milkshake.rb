class Milkshake < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :photo, presence: true
end
