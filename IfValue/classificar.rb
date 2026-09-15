#!/usr/bin/env ruby 

class Classificar

  def classificar_idade(idade)
    if idade < 18
      resultado = 'menor de idade' 
    else idade >= 18
      resultado = 'maior de idade'
    end

    resultado
  end

end

