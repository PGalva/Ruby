#!/usr/bin/env ruby

#simple calculator
puts "Enter first number: "
num1 = gets.chomp().to_f #to_f converte string para float
puts "Enter operator: "
operator = gets.chomp()
puts "Enter second number: "
num2 = gets.chomp().to_f

if operator == "+"
    puts num1 + num2
elsif operator == "-"
    puts num1 - num2
elsif operator == "*"
    puts num1 * num2
elsif operator == "/"
    puts num1 / num2
else
    puts "Invalid operator"
end



#while loop
index = 1
while index <= 5
    puts = (index)
    index += 1
end



secret_word = "gato"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_word and not out_of_guesses
  if guess_count < guess_limit
    puts = ('Enter your guess: ')
    guess = gets.chomp()
    guess_count += 1
  else
    out_of_guesses = true
  end
end

if out_of_guesses
    puts ("You lose!")
else
puts ("You guessed it!")
end




# puts("Enter your name: ")
# name = gets.chomp()
# puts("hello " + name)

# puts("Enter a number: ")
# num1 = gets.chomp()
# puts ("Enter another number: ")
# num2 = gets.chomp()

# puts (num1.to_f + num2.to_f)

# puts "Enter a color"
# color = gets.chomp()

# puts "Enter a plural_noun"
# plural_noun = gets.chomp()

# puts "Enter a celebrity"
# celebrity = gets.chomp()

# puts ("Roses are " + color)
# puts ( plural_noun + "are blue")
# puts ("I love you" + celebrity)


# #array
# friends = ["Kevin","Pedro","Oscar"];

# puts friends [-1] = "Ferreirinha";

#  #harsh
# states = {
#     "Pennsylvanis" => "PA",
#     "New York" => "NY",
# }

# #method
# def Ola
#     nome = get.chomp()
#     puts("Hi" + nome)
# end
# def Ola2(name, age)
#     puts("Hi" + name + "you are" + age.to_s)
# end

# Ola2("Pedro",24)

# def Ola2(name = "no name", age = -1)
#     puts("Hi" + name + "you are" + age.to_s)
# end

# def cube(num)
#  return num * num *num
# end

# def par
#     if (num1 % 2 == 0)
#         puts("its par")
#     else
#         puts("its impar")
#     end
# end


# ismale = true;
# istall = false;


# #testando as condições
# if ismale and istall
#     puts "you are a tall male"
# elsif ismale and !istall
#     puts "  you are a short male"
# elsif !ismale and istall
#     puts "  you are a tall female"
# else
#     puts "  you are a short female"
# end

# def max (num1,num2,num3)
#   if num1 >= num2 and num1 >= num3
#     return num1
#   elsif num2 >= num1 and num2 >= num3
#     return num2
#   else
#     return num3
#   end
# end




# def get_day_name(day) #day é o parâmetro
#     day_name =""
#     case day #case é como se fosse o switch
#     when "mon"
#         day_name = "Monday"
#     when "tue"
#         day_name = "Tuesday"
#     when "wed"
#         day_name = "Wednesday"
#     when "thu"
#         day_name = "Thursday"
#     when "fri"
#         day_name = "Friday"
#     when "sat"
#         day_name = "Saturday"
#     when "sun"
#         day_name = "Sunday"
#     else
#         day_name = "Invalid Day Name"
#     end
#     return day_name
# end

# puts get_day_name("mon") #mon é o argumento

