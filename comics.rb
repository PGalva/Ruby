#!/usr/bin/env ruby 

require 'json';




def get_comic_info()
puts "Enter the title: "
title = gets.chomp()
puts "Enter the author: "
author = gets.chomp()
{"title" => title,
"author" => author
}
end

def comics_to_json(file_path,data)
  File.write(file_path,JSON.pretty_generate(data)) #salva os dados no arquivo JSON
     return [] unless File.exist?(file_path)
      content = File.read(file_path) #lê o conteúdo do arquivo e remove espaços em branco
  return [] if content.empty? #verifica se o conteúdo está vazio
  JSON.parse(content)# analisa o conteúdo JSON e retorna um hash
  end
end

comicsbyyear = comics_to_json('booksbyyear.json') #carregando o arquivo JSON


def add_comic_json()
  comics = comics_to_json('booksbyyear.json')
  comics = [] unless comics.is_a?(Array)

  newcomic = get_comic_info()
  comics << newcomic #adicionando o novo comic ao array
  comics_to_json('booksbyyear.json', comics) # salvando o array atualizado no arquivo JSON

end

add_comic_json() #chamando a função para adicionar o comic