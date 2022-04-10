option = -1

until option == 0
  puts "-------------------Menu-------------------"
  puts "0 - Sair"
  puts "1 - Instruções de Controle"
  puts "2 - "
  puts "3 - "

  puts "Opção:"
  option = gets  
  option = option.to_s.to_i

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
  puts "Luana"
end

