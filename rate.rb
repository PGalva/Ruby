#!/usr/bin/env ruby

class Rate
  attr_reader :value, :nominal_rate, :inflation_rate


def initialize(value, nominal_rate, inflation_rate)
  @value = value
  @nominal_rate = nominal_rate
  @inflation_rate = inflation_rate
end

def self.create(value, nominal_rate, inflation_rate)
  new(value, nominal_rate, inflation_rate)
end


def real_interest_rate
  @nominal_rate - @inflation_rate
end

def analysis
    rate = real_interest_rate
    puts "Valor: #{@value}"
    puts "Taxa Real de Juros: #{rate}%"
if rate < 0
      puts "Sinal: POSITIVO para Prata (Taxa Real Negativa) 🥈"
    else
      puts "Sinal: NEUTRO/NEGATIVO para Prata."
end 

end


silver_rate = Rate.create(1000, 5, 2)
silver_rate.analysis