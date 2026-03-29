#!/usr/bin/env ruby

class Offers
  attr_reader :offers
private 

  def initialize(offers)
    @offers = offers
  end

  def check_offers()
    if @offers.empty?
      raise ArgumentError, "There are no offers available"
    else
      puts "The available offers are:"
    end
  end
end