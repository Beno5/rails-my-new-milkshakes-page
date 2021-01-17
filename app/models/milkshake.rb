class Milkshake < ApplicationRecord
  belongs_to :user
  has_many :favourites
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :preparation, presence: true
end
