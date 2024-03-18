print "Qual é a temperatura atual? "
    Fahrenheit = gets.chomp.to_f
    
    

puts "A temperatura atual nos EUA esta (#{Fahrenheit}) => E no Brasil (#{(Fahrenheit - 32) / 1.8})"
puts "A temperatura atual nos EUA esta (#{Fahrenheit}) => E no Brasil (#{((Fahrenheit - 32) / 1.8).round(2)})"
