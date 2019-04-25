require_relative 'chef'

class Restaurant
  attr_reader :name, :city, :chef
  attr_writer :capacity

  def initialize(name, city, capacity, category, chef_name)
    @name = name
    @city = city
    @capacity = capacity
    @category = category

    @chef = Chef.new(chef_name, self)

    @clients = [] #Array
  end

  def self.categories
    return ["thai", "indian", "burguer", "maravilhoso"]
  end

  def capacity
    if Time.now.hour > 8 && Time.now.hour < 16
      return @capacity
    elsif Time.now.hour > 19 && Time.now.hour < 21
      return @capacity + 20 # Terrace is open
    end
  end

  def print_clients
    @clients.each do |client|
      puts "- #{client}"
    end
  end

  def open?
    return Time.now.hour > 8 && Time.now.hour < 16
  end

  def closed?
    !open?
  end

  def book(client_name)
    if @clients.size < capacity
      @clients << client_name
    else
      puts "Restaurant is full"
    end
  end

end
