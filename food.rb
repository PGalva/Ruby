#!/usr/bin/env ruby

require_relative 'store'

class Fruits
  attr_reader :name, :quantity
  private

  def initialize(name, quantity)
    @name = name
    @quantity = quantity
  end

def check_quantity()
  if @quantity < 0
    raise ArgumentError 'Quantity cannot be negative'
  else puts "You have #{@quantity} #{@name}"
    
  end
end

 def self.create(name, quantity)
    new(name, quantity)
 end

end 

fruits = Fruits.create("Apple", 10)
fruits.check_quantity()