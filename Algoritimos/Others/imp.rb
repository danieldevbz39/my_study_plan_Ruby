print "Qual preço do produto? $"
x = gets.chomp.to_f

mult = x * 60 / 100

puts "O imposto será de $#{mult}0."
