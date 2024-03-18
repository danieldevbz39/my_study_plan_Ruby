def missing_characters(sentence)
  alphabet = ('a'..'z').to_a
  missing = alphabet.reject { |char| sentence.downcase.include?(char) }
  missing.join('')
end

print "Digite uma frase:"
input = gets.chomp

missing = missing_characters(input)

if missing.empty?
  puts "A frase já é um Pangrama."
else
  puts "Caracteres faltando para tornar a frase um Pangrama: #{missing}"
end