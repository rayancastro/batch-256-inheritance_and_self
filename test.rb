require_relative 'restaurant'

vintao = Restaurant.new("Vintao", "SP", 100, "maravilhoso")

puts "#{vintao.name} is in #{vintao.city}"

puts "It has a capacity of #{vintao.capacity}"

vintao.capacity = 120

puts "It has a capacity of #{vintao.capacity}"

puts "#{vintao.name} is now #{vintao.open? ? "open" : "closed"}"

p vintao
vintao.book("Ana")
vintao.book("Rayan")

p vintao
