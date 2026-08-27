require_relative 'Boletos'
require_relative 'Documentos'



def processar(pagamento, valor)
  pagamento.pagar
end

def imprimir(papel)
  papel.exportar
end

processar.pagar(Boletos,300)

