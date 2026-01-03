class OdmSend

    attr_accessor :order_number # o attr_accessor faria a criação do order_number, Sem isso, Ruby não sabe onde salvar o valor.

def initialize(order_number) # initialize é o construtor, Ele garante que o objeto nasça pronto
 self.order_number = order_number
end

def received?
    true
end
end
    
    