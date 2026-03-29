#!/usr/bin/env ruby

class nameanalyser
  attr_reader :name
   
  def initialize(name)
    @name = name
  end

  def count_words()
    for name in @name
      if name.length > 5 
        puts "#{name}"
      end 
    end
  end
end

name = nameanalyser.new(["counter", "analyser", "ruby", "programming"])
puts name.count_words