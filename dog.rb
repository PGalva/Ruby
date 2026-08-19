class Dog
  @@total_dog = 0
  @@total_coleiras = 0
  attr_accessor :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @@total_dog += 1
    @@total_coleiras += 1
  end

def self.create(name, breed) #gera a criacao do cachorro
  new(name, breed)
end

end

Cachorro = Dog.create("Rex", "Labrador")
Rex = Dog.create("Rex", "Labrador")
cachirra = Dog.create("Bella", "Golden Retriever")

puts "Total number of dogs: #{Dog.class_variable_get(:@@total_dog)}"

puts "Total number of collars: #{Dog.class_variable_get(:@@total_coleiras)}"


# def self.total_coleiras
#   @@total_coleiras
# end

# def self.increment_coleiras
#   @@total_coleiras += 1
# end

