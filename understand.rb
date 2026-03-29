  class God include Love
      attr_reader :father, :son, :holy_spirit, :person
    
      private

      def initialize(father, son, holy_spirit)
            @father = father
            @son = son
            @holy_spirit = holy_spirit
            @person = {father: father, son: son, holy_spirit: holy_spirit}
      end 

    def self.create(father,son,holy_spirit)
      new(father,son,holy_spirit)
    end

  def status
    person.each do |key, value|
      if @person.values.count(value) > 1
        puts " #{key.capitalize}: #{value} is unique"
      end
    end
  end
  

  module Love
    def Storge()
      puts "Familiarity and affection"
    end
    def Philia()
      puts "Friendship and loyalty"
    end
    def Eros()
      puts "Romantic and passionate love"
    end
    def Agape()
      puts "Unconditional and selfless love"
    end
  end

  god = God.create("Father", "Son", "Holy Spirit")
  puts 'The son is : ' + god.son

  god.person.each do |key, value|
    if value == 'Son'
      puts "#{key.capitalize}: #{value}"
    end
  end

  god.person.select do |key, value|
    key == :son && value == 'Son'
  end

end

god.Agape()
