puts "----------------------------"
puts "  DEPARTAMENTO DE TRANSITO  "
puts "----------------------------"

print 'Digite o ano atual (yyyy): '
ano = gets.chomp.to_i

print 'Digite a data de nascimento (yyyy): '
nasc = gets.chomp.to_i
puts "----------------------------"
if idade = (ano - nasc)
    puts ("VOCÊ TEM #{idade} anos")

    print ("DIGITE SUA IDADE:") 

end

    idade= gets.chomp.to_i
    
    case idade
    when 1..17
        puts "----------------------------"
        puts  'INAPTO A TIRAR A CARTEIRA' 
        puts "----------------------------"
    when 18..70
        puts "----------------------------"
        puts   'APTO A TIRAR A CARTEIRA' 
        puts "----------------------------"
    else
        puts 'Não foi possível identificar'
        puts "----------------------------"
    end