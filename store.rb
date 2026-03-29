#!/usr/bin/env ruby

class Store
  attr_reader :name, :city
private 

def initialize(name,city)
  @name = name
  @city = city
end

def check_store()
  if @name.empty? || @city.empty?
    raise ArgumentError, "Store name and city cannot be empty"
else 
  puts "The store #{@name} is located in #{@city}"
end
end

def self.create(name, city)
  new(name, city)
end

end

store = Store.create("London Drugs", "Vancouver")
store.check_store()