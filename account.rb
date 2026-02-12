#!/usr/bin/env ruby

    class Account
    attr_reader :owner, :balance, :day_limit

      def withdraw(amount)
    check_withdraw(amount)
    @balance -= amount
  end

  private
    def self.create(owner,balance,day_limit)
    if owner.empty?
      raise ArgumentError, "Its not possible to create an account without an owner"
    end
    if balance < 0
      raise ArgumentError, "Balance cannot be negative"
    end
      new(owner,balance,day_limit)
    end
    def initialize(owner,balance,day_limit=100)
      @owner = owner
      @balance = balance
      @day_limit = day_limit
    end
 def check_withdraw(amount) #metodo para realizar o saque
    if amount < 0
      raise ArgumentError, "Withdraw amount must be greater than zero"
    end
    if amount > @day_limit
      puts "Not permmited because you have reached the daily limit"
    end
    if amount > @balance
      raise ArgumentError, "Not enough balance"
    end
  end

end

 
account = Account.create("John Doe", 1000, 500)
account.withdraw(500)
puts "Balance after withdrawal: #{account.balance}"
