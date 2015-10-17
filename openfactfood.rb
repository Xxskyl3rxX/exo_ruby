require 'open-uri'
require 'json'


loop do

puts "Veuillez entrer un numéro de Code Barre"
bar_code= gets.chomp

url= "htpp://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json" # créer une variable url pour atteindre le site d'openfactfood #{} interpolation du code barre qu'on veut modifier

json= open(url).read #conversion du json en Ruby car deux prg différents

data= JSON.parse(json) #conversion du json en Ruby

puts data['product']['product_name'] # pour travailler sur les données nous devons connaitre le nom de chaque propriete
 
end
