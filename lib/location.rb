class Location

  attr_accessor :restaurant, :address, :rent

  @@all = []

  def self.all
    @@all
  end

  #to find addresses for all location instances
  #take all location instances
  #find address of each location instance
  def self.all_addresses
    @@all.map do |location|
      location.address
    end
  end

  def initialize(restaurant, address, rent)
    @restaurant = restaurant
    @address = address
    @rent = rent

    @@all << self
  end

  #find all of the employees for the location instance
  def employees
      Employee.all.select do |emp|
        emp.location == self
      end
  end

  def new_hire(name, pay)
    Employee.new(name, pay, self)
  end


end
