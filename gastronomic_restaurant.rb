require_relative 'restaurant'

class GastronomicRestaurant < Restaurant
  def initialize(name, city, capacity, category, stars)
    super(name, city, capacity, category)

    @stars = stars
  end

  def open?
    super() || Time.now.hour > 20 && Time.now.hour < 23
  end

  def print_clients
    puts "You dont have access."
  end
end
