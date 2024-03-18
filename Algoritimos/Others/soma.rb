print "Digite o primeiro número:"
x = gets.chomp.to_i

print "Digite o segundo número:"
y = gets.chomp.to_i

soma = x + y
subt = x - y
mult = x * y
div = x.to_f / y.to_f


puts "A soma entre #{x}, e #{y}, é igual a #{soma}."
puts "A subtração entre #{x}, e #{y}, é igual a #{subt}."
puts "A multiplicação entre #{x}, e #{y}, é igual a #{mult}."
puts "A divisão entre #{x}, e #{y}, é igual a #{div}."