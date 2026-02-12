#!/usr/bin/env ruby

class Library
    attr_reader :title, :author, :borrowed

    def borrow() #verificar se o livro já foi emprestado
        if @borrowed == true # == para comparação, = para atribuição
          raise ArgumentError, "Book is already borrowed"
        elsif @borrowed == false #verificar se o livro está disponível para empréstimo
          puts "Book borrowed successfully"
          @borrowed = true
        end
      end 
   
  private

      def self.create(title,author,borrowed = false)
        @title = title
        @author = author
        @borrowed = borrowed

      if title.empty?
        raise ArgumentError, "Title cannot be empty"
      end
      if author.empty?
        raise ArgumentError, "Author cannot be empty"
      end
        new(title,author,borrowed)
      end


      def initialize(title,author,borrowed)
        @title = title
        @author = author
        @borrowed = borrowed
      end 
      
      
      def return_book() #verificar se o livro foi emprestado
        if borrowed == false
          raise ArgumentError, "Book is not borrowed"
        elsif @borrowed == true
          puts "Book returned successfully"
          @borrowed = false
        end
      end
  
    end
book = Library.create("The Great Gatsby", "F. Scott Fitzgerald", false);
book.borrow() # Empréstimo bem-sucedido