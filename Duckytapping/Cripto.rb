require_relative 'Boletos'

class Cripto
  
  def pagar(valor)
    puts "Pagamento realizado com sucesso"
  end

end



def processar(pagamento, valor)
  pagamento.pagar
end

processar(Cripto.new,300)



