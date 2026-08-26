require_relative 'Boletos'



def processar(pagamento, valor)
  pagamento.pagar
end

processar.pagar(Cripto,300)