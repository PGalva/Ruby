#!/usr/bin/env ruby 

require_relative "testev2.rb"
require"json"

def book_info(title,author,pages)
  book = Book.create(title,author,pages)
end


def load_json(file_path)
  return {} unless File.exist?(file_path) #verifica se o arquivo existe
  content = File.read(file_path).strip #lê o conteúdo do arquivo e remove espaços em branco
  return {} if content.empty? #verifica se o conteúdo está vazio
  JSON.parse(content)
end

booksbyyear = load_json('booksbyyear.json')

def get_books_by_year()
  puts"Enter the title: "
  title = gets.chomp()
  puts"Enter the author: "
  author = gets.chomp()
  puts"Enter the number of pages: "
  pages = gets.chomp().to_i
  {
    "title" => title,
    "author" => author,
    "pages" => pages
  }
end

def send_books_to_json(file_path,data)
  File.open(file_path,'w') do |f|
    f.write(JSON.pretty_generate(data))
  end
end

def add_book_json()
  books = load_json('booksbyyear.json') 
  books = [] unless books.is_a?(Array) #verifica se books é um array

  newbook = get_books_by_year
  books << newbook

  send_books_to_json('booksbyyear.json', books)
end

add_book_json()
