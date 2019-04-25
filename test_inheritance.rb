require_relative 'fastfood_restaurant'
require_relative 'gastronomic_restaurant'

mcdonalds = FastfoodRestaurant.new("McDonalds", "SP", 200, "burguer", 3)

puts "#{mcdonalds.name} is now #{mcdonalds.open? ? "open" : "closed"}"

cao_veio = GastronomicRestaurant.new("Cao Veio", "SP", 30, "burguer", 6)

puts "#{cao_veio.name} is now #{cao_veio.open? ? "open" : "closed"}"

mcdonalds.book("Saile")

puts "Mc Donalds"
mcdonalds.print_clients

cao_veio.book("Caio")
cao_veio.book("Rayan")

puts "Cao Veio"
cao_veio.print_clients
