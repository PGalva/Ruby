#!/usr/bin/env ruby

 class Classmates
    attr_reader :classmates ,:grades

    def check_grades
    for grades in @grades
      if grades >= 70
        puts "passed"
      elsif grades < 60
        puts "failed"
      end
    end
  end



    def initialize(classmates,grades)
      @classmates = classmates
      @grades = grades
    end
  end
  classmates = Classmates.new(["John", "Jane", "Doe"], [85, 90, 78])
  puts classmates.check_grades