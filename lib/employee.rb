
class Employee

  attr_accessor :pay
  attr_reader :name, :location


  @@all = []

  def self.all
    @@all
  end

  def self.average_pay
    container = []
    @@all.each do |emp|
      container << emp.pay
    end
    container.inject{|sum, x| sum + x}.to_f / container.size
  end

  def initialize(name, pay, location)
    @name = name
    @pay = pay
    @location = location

    @@all << self
  end

end #end of Employee class
