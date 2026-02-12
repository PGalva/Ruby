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
  


  
     
