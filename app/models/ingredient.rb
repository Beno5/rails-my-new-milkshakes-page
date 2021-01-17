class Ingredient < ApplicationRecord
  belongs_to :user
  belongs_to :milkshakes
  validates :name, presence: true, uniqueness: true
  validates :dose, presence: true
end
