require_relative 'Boletos'
require_relative 'Documentos'
require_relative 'Imprimir'
require_relative 'Noticias'



def processar(pagamento, valor)
  pagamento.pagar
end

def gerar_impressao(papel)
  papel.exportar
end

def gerar_noticia(noticia)
  noticia.exportar_noticias
end

doc = Documentos.new # sempre chama a classe para gerar um novo objeto
imp = Imprimir.new 
bol = Boletos.new
not = Noticias.new


doc.processar(Boletos,300)
bol.processar(Cripto,250)
imp.gerar_impressao(Documentos)
bol.gerar_impressao

