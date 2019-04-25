require_relative 'restaurant'

vintao = Restaurant.new("Vintao", "SP", 100, "maravilhoso", "Sr Vintao")

puts "#{vintao.name} chef's is #{vintao.chef.name}"
