#!/usr/bin/env ruby 
require 'json';
require 'yaml';

#require_relative 'translator.rb'

Translator_italian = {
"hello" => "ciao",
"goodbye" => "arrivederci",
"please" =>  "per favore"
};

def translate_italian(word)
  puts "Translating to Italian..."
    return Translator_italian[word]
end

puts "Enter a word to translate to Italian:"
word = gets.chomp().downcase #converte a string para minúsculas
puts translate_italian(word)