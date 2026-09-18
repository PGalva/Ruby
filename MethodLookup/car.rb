class Car
  attr_accessor :make, :model, :year

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def start_engine
    puts "Starting the engine of the #{@year} #{@make} #{@model}."
  end
end