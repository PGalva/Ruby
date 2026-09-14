#!/usr/bin/env ruby

class Contador
  attr_accessor :total

  def initialize(total)
    @total = total
  end

  def self.create(total)
    new(total)
  end


  limit = 10 #variavel local

  def incrementar()
     limit = 10 #variavel local
    @total += 1
    if @total > limit
      puts "Limite atingido"
    else
      puts "Total atual: #{@total}"
    end
  end
end


inc =  Contador.new(15)
inc.incrementar()

Contador.instance_variables;