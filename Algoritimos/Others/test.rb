puts ("-------------------------")
puts ("  Escola do Madruguinha  ")
puts ("-------------------------")

p   ("Digite a primeira nota:")
x = gets.chomp.to_f

p ("Digite a segunda nota:")
y = gets.chomp.to_f
puts ("-------------------------")

def calcular_media(numeros)
    # Verifica se a lista está vazia
    return nil if numeros.empty?
    
    # Calcula a soma de todos os números na lista
    soma = numeros.sum
    
    # Calcula a média dividindo a soma pelo número de elementos na lista
    media = soma.to_f / numeros.length
    
    return media
  end
  
  # Exemplo de uso:
  lista_numeros = [x,y]
  puts "MÉDIA: #{calcular_media(lista_numeros)}"


  if lista_numeros = 7
    
    puts ("ALUNO APROVADO")

  puts ("ALUNO REPROVADO")

puts ("-------------------------")
  