class Pedido
  attr_reader :item;

  TAXA_DE_ENTREGA = 5.0 #constante de taxa de entrega

  def initialize
  @item = [] #array de itens, vazio inicialmente
  @taxa_de_entrega = TAXA_DE_ENTREGA
  
  end

  def self.create(item,taxa_de_entrega)
    new(item,taxa_de_entrega)
  end


  def adicionar_item(nome,preco)
    @item << {nome: nome, preco: preco}
  end
    
  def calcular_total{ #atributo de instancia @item é um hash que contém o nome e o preço do item
    preco = @item.sum { |item| item[:preco] } #preço é a soma dos preços dos itens
    total = preco + TAXA_DE_ENTREGA #total é a soma do preço dos itens mais a taxa de entrega
    puts "O total do pedido é: R$ #{total}"  
    }
    end
  end
end

pedido = Pedido.create("Pizza", 5.0)