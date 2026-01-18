#!/usr/bin/env ruby 
#shebang line to indicate Ruby interpreter
require 'json';
require 'yaml'

#learning harsh and french
# Translations = {
# "Hello" => "bonjour",
# "Goodbye" => "au revoir",
# "Please" => "s'il vous plaît",
# "Thank you" => "merci",
# "Plate" => "assiette"
# };

def load_json(file_path) #função para carregar o arquivo JSON
  file = File.read(file_path)
  data = JSON.parse(file)
end

Translations = JSON.load_file('translations.json') #carregando o arquivo JSON com as traduções

def send_words_to_json(file_path,data) #função para salvar o dicionário em um arquivo JSON
  File.open(file_path, 'w') do |f| #abrindo o arquivo em modo de escrita
    f.write(JSON.pretty_generate(data)) #escrevendo os dados no arquivo em formato JSON
  end
end


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
  puts "Please provide the translation for '#{word}':"
  translated_word = gets.chomp()
  add_word_to_dictionary(word, translated_word) #chamando a função para adicionar a nova palavra
  exit
end
end

def add_word_to_dictionary(word,translated_word) #função para adicionar nova palavra ao dicionário
Translations[word] = translated_word #
send_words_to_json('translations.json', Translations) #salvando o dicionário atualizado no arquivo JSON
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