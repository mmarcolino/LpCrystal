option = -1

until option == 0
  puts "\n-------------------Menu-------------------"
  puts "0 - Sair"
  puts "1 - Instruções de Controle"
  puts "2 - Alocação de Memória"
  puts "3 - Tipos de Dados"

  puts "Opção:"
  option = gets  
  option = option.to_s.to_i
  print "\n"

  case option
  when 0 
    puts "Encerrando."
  when 1
    controlInstructions
  when 2
    memoryAllocation
  when 3
    tiposDeDados
  else
    puts "Opção Inválida."
    exit 0
  end
end

def controlInstructions
  puts " Instruções de Controle"
  puts "----------If-----------"
  idade = 21
  if idade < 21
    puts "Menor de 21 anos."
  else if idade == 21
    puts "21 anos."
  else 
    puts "Maior de 21 anos."
  end

  puts "------If Ternário------"
  puts idade <= 21 ? (idade < 21 ? "Menor de 21 anos." : "21 anos.") : "Maior de 21 anos."

  puts "--------Unless---------"
  unless idade == 21
    puts "Idade diferente de 21 anos."
  else
    puts "21 anos."
  end

  puts "----------&&-----------"
  result = idade == 21 && "21 anos."
  puts result

  puts "----------||-----------"
  result = idade != 21 || "21 anos."
  puts result

  puts "---------Case----------"
  case idade
  when 21
    puts "21 anos."
  else
    puts "Idade diferente de 21 anos.."
  end
  
	  puts "---------While---------"
  idade += 1
  while idade > 17
    idade -= 1    
    # sair do loop
    if idade == 18
      break
    end
    # tentar executar a próxima iteração do loop
    if idade == 20
      next
    end
    print "Idade "
    print idade
    print "\n"
  end

  puts "---------Until---------"
  idade = 21
  until idade < 20
    puts "Idade #{idade.to_s}"
    idade -= 1
  end
end
end

class Pessoa
  def initialize(nome : String, idade : Int32)
    @nome = nome
    @idade = idade
  end
  
  def nome
    @nome
  end

  def idade
    @idade
  end
end 

def memoryAllocation
  puts " Alocação de Memória"
  # Int32 quando não indicado
  idade = 21
  print "\n Idade inicial: "
  print idade
  print "\n\n"
  
  puts "-------pointerof(x)-------"
  ptr_idade = pointerof(idade)
  ptr_idade.value = 30
  puts ptr_idade
  puts ptr_idade.value
  
  puts "---------Ponteiro---------"
  # ponteiro endereçado
  ptr_idade = Pointer(Int64).new(5678)
  puts ptr_idade.address
  puts ptr_idade

  puts "----------Malloc----------"
  # malloc com a quantidade de bytes e o valor inicial
  # no caso seria 2*Int32 = 2*4 = 8 bytes
  ptr_idade = Pointer.malloc(2, 21)
  puts ptr_idade
  puts ptr_idade[0]
  puts ptr_idade[1]

  puts "---Instância de Classe----"
  luana = Pessoa.new "Luana", 21
  puts luana.nome
  puts luana.idade
  puts luana

end

#Função que demonstra alguns dos tipos de dados utilizados na linguagem. 
def tiposDeDados
  puts "---------Tipos Primitivos---------"
  idadeInt = 18
  idadeFloat = 18.0
  idadeString = "18 anos"
  isIdadesEquals = idadeInt == idadeFloat
  puts "Idade em inteiro: #{idadeInt}, idade em ponto flutuante: #{idadeFloat}, idade em string #{idadeString}."
  puts "\nAo testar se idadeInt == idadeFloat, obtemos #{isIdadesEquals}, que representa o tipo boolean\n"
  puts "---------Tipos Compostos---------"
  arrayDeIdades = [idadeInt, idadeFloat, idadeString, isIdadesEquals]
  puts "Um array é um tipo de dados composto (mapeamento), que pode receber valores de vários tipos mais simples."
  puts "Como exemplo, considere um array contendo as quatro variáveis anteriores. índice 0: #{arrayDeIdades[0]}, índice 1: #{arrayDeIdades[1]}, índice 2: #{arrayDeIdades[2]}, índice 3: #{arrayDeIdades[3]}"
end
