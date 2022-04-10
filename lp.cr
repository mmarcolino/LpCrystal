option = -1

until option == 0
  puts "\n-------------------Menu-------------------"
  puts "0 - Sair"
  puts "1 - Instruções de Controle"
  puts "2 - "
  puts "3 - "

  puts "Opção:"
  option = gets  
  option = option.to_s.to_i
  print "\n"

  case option
  when 0 
    puts "Encerrando."
  when 1
    controlInstructions
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
  
  puts "--------While---------"
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

  puts "--------Until---------"
  idade = 21
  until idade < 20
    puts "Idade #{idade.to_s}"
    idade -= 1
  end

end

end
