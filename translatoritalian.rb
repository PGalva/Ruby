#!/usr/bin/env ruby 
#require 'json';
require 'yaml';

#require_relative 'translator.rb'

#Translator_italian = {
#"hello" => "ciao",
##"please" =>  "per favore"
#};


def load_yml(file_path) #funcao para carregar o arquivo YML
file = File.read(file_path)
data = YAML.load(file)
end

Translations_italian = load_yml('translatoritalian.yml') #carregando o arquivo YML com as traduções

def translate_italian(word)
    return Translations_italian[word]
end



def enter_word_italian 
    puts "Enter a word to translate to Italian:"
    word = gets.chomp().downcase
end

if Translations_italian.key?(word = enter_word_italian)
  puts translate_italian(word)
else
  puts "Sorry, the word '#{word}' is not in the Italian dictionary."
end;

