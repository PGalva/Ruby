require_relative 'Boletos'
require_relative 'Documentos'
require_relative 'Imprimir'



def processar(pagamento, valor)
  pagamento.pagar
end

def imprimir(papel)
  papel.exportar
end

doc = Documentos.new # sempre chama a classe para gerar um novo objeto
imp = Imprimir.new 
bol = Boletos.new


doc.processar(Boletos,300)
bol.processar(Cripto,250)

imp.imprimir(Documentos)

