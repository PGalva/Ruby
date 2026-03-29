#!/usr/bin/env ruby

class CounterAnalyser
  attr_reader :counter

   def initialize(counter)
    @counter = counter
  end

  def odd_counter()
    for counter in @counter
      if counter % 2 !=0
        puts "#{counter} is an odd number"
      end
    end
  end

  def even_counter()
    for counter in @counter
      if counter % 2 == 0
        puts "#{counter} is an even number"
      end
    end
  end


end


class CounterName
  attr_reader :counter_name

  def initialize(counter_name)
    @counter_name = counter_name
  end

  def count_words()
        for counter_name in @counter_name
          if counter_name.length > 5
            puts "#{counter_name} is a long word"
          end
        end
  end
end

name = CounterName.new(["counter", "analyser", "ruby", "programming"])
puts name.count_words


class Counterobjects
  attr_reader :counter_objects

  def initialize(counter_objects)
    @counter_objects = counter_objects
  end

  def counter_objects()
    @counter_objects.each do |counter_objects|
      if counter_objects.length > 5
        puts "#{counter_objects} is a long word"
      end
    end
  end
end

obj= Counterobjects.new(["counter", "analyser", "ruby", "programming"])
puts obj.counter_objects