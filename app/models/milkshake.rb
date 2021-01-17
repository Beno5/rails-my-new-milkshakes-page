class Milkshake < ApplicationRecord
  belongs_to :user
  has_many :favourites
  has_many :doses
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
