class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :ingredient, presence: true
  # validates :cocktail, presence: true, uniqueness: {:scope => :ingredient }
  validates_uniqueness_of :ingredient_id, scope: [:cocktail_id], :message => "One description per ingredient"
  validates :description, presence: true
end

