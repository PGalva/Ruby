require_relative 'LogTerminalAdapter'
class User
  attr_reader :name, :password, :logs

  def initialize(name, password, logs)
    @name = name
    @password = password
    @logs = logs

  end
  
 



 def alterar_password(old_password, new_password)
    if old_password == @password 
      @password = new_password 
      # Usando o adaptador injetado (Duck Typing!)
      @logs.registrar("Senha do usuário #{@name} foi alterada com sucesso.")
    else 
      @logs.registrar("Tentativa de alteração de senha falhou para #{@name}.")
      raise "Senha antiga incorreta" 
    end
  end
end

registrador = LogTerminalAdapter.new
user1 = User.new("Alice", "1234", registrador)

begin
  user1.alterar_password("errada", "9999") # Vai falhar e registrar no terminal
rescue => e
  puts "Erro capturado: #{e.message}"
end

puts "---"

user1.alterar_password("1234", "5678") # Vai dar certo e registrar no terminal