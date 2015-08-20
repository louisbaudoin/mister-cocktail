# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint = Ingredient.create(name: "mint leaves")

mojito = Cocktail.create(name: "Mojito",)
pisco = Cocktail.create(name: "Pisco sour",)
orange = Cocktail.create(name: "Jus d'orange light",)


Dose.create(cocktail_id: 1, ingredient_id: 1, description: "mettre pas mal de citron" )
Dose.create(cocktail_id: 1, ingredient_id: 3, description: "la mente apres le citron" )
Dose.create(cocktail_id: 1, ingredient_id: 2, description: "optional but good enough")


Dose.create(cocktail_id: 2, ingredient_id: 1, description: "mettre pas mal de citron" )
Dose.create(cocktail_id: 2, ingredient_id: 2, description: "Piller la glace avant de servir" )




