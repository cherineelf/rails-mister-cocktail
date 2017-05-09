class Dose < ApplicationRecord
  validates :description, :ingredient, :cocktail, presence: true
  validates :ingredient, uniqueness: { scope: :cocktail}
  belongs_to :cocktail
  belongs_to :ingredient
end
