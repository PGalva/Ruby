class User
  attr_reader :name, :email, :age

  def initialize(name, email, age)
    @name = name
    @email = email
    @age = age
  end
  
  self.create(name, email, age)
  new(name, email, age)
end