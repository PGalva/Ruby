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
    #Translations.key?(word) #key? verifica se a chave existe no dicionário
    return Translations[word]
end

def get_the_word 
    puts "Enter a word to translate:"
    word = gets.chomp()
end

def validate_words(word)
  if Translations.key?(word)
    puts translate(word)
    else
  puts "Sorry, the word '#{word}' is not in the dictionary."
  exit
end
end


def show_translation(word) #Motivo da função é separar a lógica de obtenção da palavra e exibição da tradução
    translation = translate(word)
    validate_words(word) #chamando a função validate_words
    puts "The translation is: #{translation}" #interpolação de strings
end

while true
  word = get_the_word #obtendo a palavra do usuário
  show_translation(word) #mostrando a tradução
  puts "Do you want to translate another word? (yes/no)" #perguntando ao usuário se deseja continuar
  answer = gets.chomp().downcase #downcase para normalizar a resposta
  break if answer != "yes"
end