class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, presence: true
  validates :cocktail, presence: true, uniqueness: {:scope => :ingredient }
  validates :description, presence: true
end

