#!/usr/bin/env ruby

class LibraryDoor
  attr_reader :open 


private 

def self.create(open = false)  
  new(open) 
end
def initialize(open)
  @open = open
end

def open_door()
  if @open == true
    raise ArgumentError, "The Library door is already open"
  else 
    puts "The Library door is now open"
    @open = true
  end
end

def close_door()
  if @open == false
    raise ArgumentError, "Library door is already closed"
  else
    puts "The Library door is now closed"
    @open = false
  end
end

def status()
if @open == true
  puts "The Library door is open"
  elsif @open == false
    puts "The Library door is closed"
end
end

end