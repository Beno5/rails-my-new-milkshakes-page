class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :milkshake
end
