require_relative 'restaurant'

class FastfoodRestaurant < Restaurant

  def initialize(name, city, capacity, category, prep_time)
    super(name, city, capacity, category)

    @prep_time = prep_time
  end
end
