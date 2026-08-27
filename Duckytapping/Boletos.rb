require_relative 'Documentos'
class Boletos 

  def pagar(valor)
    puts "Pagamento realizado com sucesso"
  end

  def gerar_impressao(papel)
    papel.exportar
  end
end


