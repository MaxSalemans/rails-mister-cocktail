require 'open-uri'
require 'json'

puts "Delete DB.."
Ingredient.delete_all

puts "Create seeds via JSON"
open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |ingredients|
  data = []
  ingredients.read.each_line do |ingredient|
    @item = JSON.parse(ingredient)
    @item["drinks"].each do |ing|
      object = {
        "name":        ing["strIngredient1"],
      }
      data << object
    end
  end
  Ingredient.create!(data)
  puts "Seeds created succesfully!"
end
