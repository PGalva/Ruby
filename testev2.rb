#!/usr/bin/env ruby

  class Comic
  attr_reader :title, :author
  private

  def self.create(title,author)
  if pages <= 0
    raise ArgumentError, "Pages must be greater than zero"
  elseif title.empty?
    raise ArgumentError, "Title cannot be empty"
  end
  new(title,author,pages)
  end

  def initialize(title,author)
  @title = title
  @author = author

  end
  end

#exercicio 1
  class Car
    attr_writer :brand, :year
    private
    def self.create(brand,year)
      if brand.empty?
        raise ArgumentError, "Brand cannot be empty"
      elsif year <= 0
        raise ArgumentError, "Year must be greater than zero"
      end
      new(brand,year)
    end
    def initialize(brand,year)
      @brand = brand
      @year = year
    end
  end

  #exercicio 2
  class User
    attr_reader :name, :email
    private 
    def self.create(name,email)
     new(name,email) 
    end

    def initialize(name,email)
      @name = name
      @email = email
    end
  end

  #exercicio 3
  class Product
    attr_reader :name, :price
    private

  
  
    def self.create(name,price)
      if price < 0
        raise ArgumentError, "Price must be greater than zero"
      end
      new(name,price)
    end

    def initialize(name,price)
      @name = name
      @price = price
    end
  end


  #exercicio 1 
      class Account
        attr_reader :balance, :owner, :day_limit
        private

        def self.create(owner,balance, day_limit)
          if balance < 0
            raise ArgumentError, "Balance cannot be negative"
            elsif owner.empty?
              raise ArgumentError, "Owner cannot be empty"
          end
          new(owner,balance,day_limit)
        end
    def initialize(owner,balance,day_limit)
      @owner = owner
      @balance = balance
      @day_limit = day_limit
      day_limit = 1000
    end

      def deposit(amount)
        if amount <= 0
          raise ArgumentError, "Deposit amount must be greater than zero"
        else
          @balance += amount # adiciona o valor ao saldo
        end    
      end
        def withdraw(amount)
          if amount <= 0
            raise ArgumentError, "Withdraw amount must be greater than zero"
          elsif amount > @balance
            raise ArgumentError, "Insufficient funds"
          else
            @balance -= amount # subtrai o valor do saldo
          end
        end

     end

     class Specialaccount < Account # herda da class e Account
       attr_reader :limit_overdraft

       def self.create(limit_overdraft,owner)

        new(limit_overdraft,owner)
       end

      def initialize(limit_overdraft,owner)
        super(owner) # chama o initialize da classe pai
        @limit_overdraft = limit_overdraft
        @owner = owner
        limit_overdraft = 100
      end 

def withdraw(amount)  
  if amount > @limit_overdraft + @balance # verifica se o valor é maior que o limite de saque
    @balance -= amount
  else super(amount) # chama o método withdraw da classe pai
  end
     
end

# desafio 5
# 

def 

def reset_limit_overdraft() # método para resetar o limite de saque
if super(amount) > @day_limit # verifica se o valor do saque é maior que o limite diário
puts "Not permmited because you have reached the daily limit"
@limit_overdraft = 100
end
end
  
class CounterAnalyser
  attr_reader :number

def initialize(number)
  @number = [1,2,3,4,5,6,7,8,9,10]

  def self.create(number)
    new(number)
  end

def smallest()
  smallest = @number[0]
  for number in @number
    if number < smallest
      smallest = number
    end
  end
        puts "The smallest number is #{smallest}"



end 
end
end

class counterpair()
  attr_reader :number

  def initialize(number)
    @number = [1,2,3,4,5,6,7,8,9,10]
  end
 def self.create(number)

  def even_counter()
    for number in @number
      if number % 2 == 0
        puts "#{number} is an even number"
      end
    end
  end

end

class Count_name
  attr_reader :name
  def initialize(name)
    @name = ["counter", "analyser", "ruby", "programming"] 
  end
  def self.create(name)

  def count_name()
    for name in @name
      if name.length > 3
        puts "#{name}"
      end
      end
    end
  end
end

class Word_analyser
  attr_reader :word

  def initialize(word)
    @word = ["counter", "analyser", "ruby", "programming"]
  end
  def self.create(word)
    
    def count_name()
      word.each do |word|
        puts "#{word} has #{word.length} characters"
      end
      end
    end
  end
end


class Soma
  attr_reader :number
  def initialize(number)
    @number = [1,2,3,4,5,6,7]
  end
  def self.create(number)
    new(number)
  end

  def sum()
    total = 0
  end
    for number in @number
      total += number
    end
    puts "The sum of the numbers is #{total}"
  end
end

soma = Soma.create([1,2,3,4,5,6,7])
puts soma.sum



class Invited
  attr_reader :name

  def initialize(name)
    @name = name
  end
  def self.create(name)
    new(name)

  def filter()
    @name.select do |name|
      name.length > 5 || name.include?("C")
      end 
    end
  end
end
end

list = Invited.create(["Alice", "Bob", "Charlie", "David", "Eve", "Frank"])

list.filter.each do |name|
  puts "#{name} is an invited guest"
end




class Carimbo
  attr_reader :marcar

  def initialize(carimbo)
    @carimbo = carimbo # variável de instância para armazenar o valor do carimbo
  end

  def self.create(carimbo) # método de classe para criar um novo objeto da classe Carimbo
    new(carimbo) # chama o método initialize para criar um novo objeto com o valor do carimbo
  end

def marcar() # método para marcar o carimbo
  puts "Carimbo marcado com sucesso!"
end
end

c1 = Carimbo.create("Carimbo 1") # cria um objeto da classe Carimbo com o valor "Carimbo 1"
c1.marcar

class Guerreiro
  attr_reader :nome, :energia

  def initialize(nome, energia)
    @nome = nome
    @energia = energia
  end

  def self.create(nome, energia)
    new(nome, energia)
  end 
  
  def status 
    puts "Guerreiro: #{@nome}, Energia: #{@energia}"
  end

  def self.regras_de_jogo #self indica que o método é de classe, ou seja, pode ser chamado sem criar um objeto da classe
    puts "Regras do jogo:"
    puts "- Cada guerreiro tem um nome e energia"
    puts "- A energia diminui a cada ação"
    puts "- O jogo termina quando a energia de todos os guerreiros chegar a zero"
  end

end

g1 = Guerreiro.create("Arthur", 100) # cria um objeto da classe Guerreiro com o nome "Arthur" e energia 100
g1.status
Guerreiro.regras_de_jogo # chama o método de classe para exibir as regras do jogo

g2 = Guerreiro.create("Lancelot", 80)
g2.status

