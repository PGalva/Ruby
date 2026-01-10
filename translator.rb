#!/usr/bin/env ruby 
#shebang line to indicate Ruby interpreter

#learning harsh and french
Translations = {
"Hello" => "bonjour",
"Goodbye" => "au revoir",
"Please" => "s'il vous plaît",
"Thank you" => "merci",
"Plate" => "assiette"
};

def translate(word) #word é o parâmetro
    if Translations.key?(word) #key? verifica se a chave existe no dicionário
        return Translations[word]
    else
        return "word not found"
    end
end

def get_the_word 
    puts "Enter a word to translate:"
    word = gets.chomp()
    puts translate(word)
end

while true
  get_the_word
  puts "Do you want to translate another word? (yes/no)"
  answer = gets.chomp().downcase #downcase para normalizar a resposta
  break if answer != "yes"
end