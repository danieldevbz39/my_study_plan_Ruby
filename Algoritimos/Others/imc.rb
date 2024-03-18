puts "Digite seu peso"
peso = gets.chomp.to_f

puts "Digite sua altura (em metros)"
altura = gets.chomp.to_f

imc = peso / (altura * altura)

puts "Seu IMC é: #{imc}"

