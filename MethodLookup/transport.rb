require_relative 'car'

class Transport < Car
end

fusca = Transport.new("Volkswagen", "Fusca", 1970)
fusca.start_engine