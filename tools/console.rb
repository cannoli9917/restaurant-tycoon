require_relative '../config/environment.rb'




essen = Restaurant.new("Essen")
potbelly = Restaurant.new("Potbelly")

place1 = Location.new(essen, "address", 200)
place2 = Location.new(essen, "another address", 100)
place3 = Location.new(potbelly, "here", 300)

em1 = Employee.new("Kevin", 8, place1)
em2 = Employee.new("Katie", 9, place1)
em3 = Employee.new("Julia", 10, place2)





binding.pry
