require_relative 'odm_send' # O nome do arquivo deve ser em snake_case

class Integrator
def Initialize
    @order_number = order_number;
end

def Approve
    odm = OdmSend.new(@order_number)
end

if odm.received?

    puts "Pedido #{@order_number} integrado e aprovado"
    else
      puts "Falha ao integrar pedido #{@order_number}"
    end
end
end
#sucesso = odm_send.order_number(@order_number);
 #   puts ("pedido integrado")


#Uma classe deve ter UM motivo para existir.



 