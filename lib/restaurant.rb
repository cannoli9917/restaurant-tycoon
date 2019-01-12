
class Restaurant

    @@all = []

    attr_accessor :name

    def initialize(name)
      @name = name

      @@all << self
    end

    def self.all
      @@all
    end

    def locations
      Location.all.select do |loc|
        loc.restaurant == self
      end
    end

    def create_location(address)
      Location.new(self, address)
    end

    #take all locations of a restaurant instance
    #find the rent of each location
    #add the rents together
    def total_rent
      container = []
      locations.each do |loc|
        container << loc.rent
      end
      container.inject(0){|sum, x| sum + x}
    end


    def employees
      #first take all of the locations for this restaurant instance
      #get the list of employees at each location and add together
      locations.map do |loc|
        loc.employees
      end.flatten
    end

    def total_pay
      pay = 0
      employees.each do |emp|
        pay += emp.pay
      end
      pay
    end

    def total_expenses
      total_pay + total_rent
    end

end #end of restaurant class
