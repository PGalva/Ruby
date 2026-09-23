require_relative 'Transport'

class Car < Transport
  
  def start_engine
    puts "Starting the engine of the #{@year} #{@make} #{@model}."
  end
end

fusca = Transport.new("Volkswagen", "Fusca", 1970)
fusca.start_engine