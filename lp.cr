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
end

end
