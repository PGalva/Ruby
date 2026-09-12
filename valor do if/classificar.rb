#!/usr/bin/env ruby 

class ClassificarIdade

  def classificar_idade(idade)
    if idade < 18
      resultado = 'menor de idade' 
    end

    resultado
  end

end


res = ClassificarIdade.new
  puts res.classificar_idade(17)
