Time.now   # Class method

require 'json'

JSON.parse("{}") # Class method

require_relative 'restaurant'
vintao = Restaurant.new("Vintao", "SP", 100, "maravilhoso")

vintao.name # Instance method
