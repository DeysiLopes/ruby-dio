#puts "hello Deysi"

nome= 'deysi'
msg ="             Bem vinda #{nome}             "
puts msg

# puts ["a", "b", "c"]#quebra linha para cada obj
# print ["a", "b", "c"]#nao quebra linha
# p ["a", "b", "c"]
# p ["a", "b", "c"]#quebra linha por default
# p nome[0]#imprimi o caracter da posição entre colchetes
# p nome[-1]#imprimi o ultimo caracter
# p nome[-2]#imprimi penultimo caracter
# p nome.chars#imprimi cada caracter 
# p nome.length#imprimi tamanho da cadeia
print '_' *10#imprime 10 underscores
p"Operações com strings"
puts nome.object_id
puts nome.upcase.object_id#imprime todo o texto em maiusculo e cria uma nova string
puts nome.upcase
puts nome.upcase!.object_id#imprime todo o texto em maiusculo e altera a string original
puts nome.upcase!
puts nome.downcase#imprime todo o texto em minusculo
puts nome.capitalize#imprime o primeiro caracter em maiusculo
puts nome.swapcase#imprime todo o texto em minusculo/maiusculo
puts nome.reverse#imprime o texto invertido
puts nome.center(20, '-')#imprime o texto centralizado
puts nome.ljust(20, '-')#imprime o texto a esquerda
puts nome.rjust(20, '-')#imprime o texto a direita
puts nome.chop#imprime o texto sem o ultimo caracter
puts nome.chomp#imprime o texto sem o ultimo caracter
puts msg
puts msg.strip#imprime o texto sem os espacos em branco
puts nome.delete('y')#imprime o texto sem o caracter 'y'

mensagem = "Bem vindo ao curso de ruby"
puts mensagem.gsub('ruby', 'rails')#imprime a string substituindo o ruby por rails
nomes = "Deysi a copilot_demais"
p nomes.split#imprime em array o que está separado por espaço
print '_' *10#imprime 10 underscores
p"Fim - Operações com strings"
p"Números"

p 16.class
p 16.6.class
p 16.6.to_f.class#converte para float
p 16.6.to_i.class#converte para inteiro
p 16.6.to_s.class#converte para string
p 16.6.to_s#converte para string
p 16.6.to_s.to_i#converte para inteiro
p 16.6.to_s.to_f#converte para float
p 16.6.to_s.to_i.to_f#converte para float
p 16.6.to_s.to_i.to_f.to_s#converte para string
p 16.6.to_s.to_i.to_f.to_s.to_i#converte para inteiro
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f#converte para float
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f.to_s#converte para string
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f.to_s.to_i#converte para inteiro
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f.to_s.to_i.to_f#converte para float
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f.to_s.to_i.to_f.to_s#converte para string
p 16.6.to_s.to_i.to_f.to_s.to_i.to_f.to_s.to_i.to_f.to_s.to_i#converte para inteiro
p 5.send(:+, 3)#imprime o resultado da soma
print '_' *10#imprime 10 underscores
p"Fim - Números"


p"Simbolos"

#SIMBOLOS SÃO IMUTÁVEIS
p :nome.class

print '_' *10#imprime 10 underscores
p"Fim - Simbolos"

p"Arrays"

p lista = []
p lista.empty?#verifica se o array está vazio
p lista << "a" #adiciona um elemento ao array
p lista.length #quantos elementos tem no array
p lista.push("b") #adiciona um elemento ao array
p lista.length
p lista.empty?
p lista.pop  #remove o ultimo elemento
p lista << "c" #adiciona um elemento ao array
p lista.first #imprime o primeiro elemento
p lista.last #imprime o ultimo elemento
p lista1 = ["f", "g", "h"]
p lista + lista1 #concatena os dois arrays

print '_' *10#imprime 10 underscores
p"Fim - Arrays"

p"Hashes"

h3 = {"nome" => "Deysi", "idade" => 26} #cria um hash
h1 = {nome: "Deysi", idade: 26, cidade: "Santa Helena"} #cria um hash em formato array
p h1[:nome].capitalize #imprime o valor do nome
p h2 = {nome: "Deysi", idade: 26, cidade: "Santa Helena"} #cria um hash em formato array
p h2 === h1 #verifica se os dois hashes são iguais
p h1.keys #imprime as chaves do hash
p h2.values #imprime os valores do hash
p h1.has_key?(:nome) #verifica se o hash tem a chave nome
p h2.empty? #verifica se o hash está vazio

print '_' *10#imprime 10 underscores
p"Fim - Arrays"

# p "Input de dados"
# # puts "Digite seu nome: "
# # nomee = gets.chomp #pega o input do usuario sem \n
# puts "Seu nome é #{nomee.capitalize}"
# print '_' *10#imprime 10 underscores
# p"Fim - Input de dados"

p "Condicionais"
p "digite um numero: "
valor = gets.chomp.to_i
# if valor > 20
#     puts "Maior que 20 valor digitado #{valor}"
#     elsif valor < 20
#     puts "Menor que 20 valor digitado #{valor}"
#     else
#     puts "Igual a 20 valor digitado #{valor}"
#     end
#  if valor > 20 ? (puts "Maior que 20 valor digitado #{valor}") : (puts "Menor que 20 valor digitado #{valor}")
#  end
# unless valor > 20 #se o valor for maior que 20, não executa o bloco
#     puts "Menor que 20 valor digitado #{valor}"
# end
# p "O valor é maior que 20? #{valor > 20}"
p"O valor é maior que 20" if (valor > 20) #se o valor for maior que 20, executa o bloco
p"O valor é menor que 20" unless (valor > 20) #se o valor for maior que 20, não executa o bloco
print '_' *10#imprime 10 underscores
p"Fim - Condicionais"

p "Loop"
p "Digite um numero: "
valor2 = gets.chomp.to_i
# while valor2 > 0
#     puts "O valor é maior que 20" if (valor2 > 20)
#     p valor2
#     valor2 -= 1
#     break if (valor2 <= 20)
# end
for i in 1..100
    puts "O valor é maior que 20 e o valor digitado foi  #{valor2}" if (valor2 > 20)
    p i
    break if (i >= 5 && valor2 <= 20)
end
p "testando each"
list = [1, 2, 3, 4, 5]

list.each do |meu_valor| #percorre o array e imprime o valor
    puts "teste #{meu_valor}"
end

h1.each do |chave, valor| #percorre o hash e imprime o valor
    puts "Minha chave é #{chave} e o valor é #{valor}"
end

print '_' *10#imprime 10 underscores
p"Fim - Loop"


p"Metodos"

def soma(a, b = 0) #função que soma dois valores
    puts"Somando #{a} e #{b}"
    return a + b
end
puts"Executando a soma"
puts soma(10, 20)

def soma_com_parametros(a:, b:) #função que soma dois valores
    return soma(a, b)
end
puts "Executando método soma com parametros"
puts soma_com_parametros(b:10, a:20)

print '_' *10#imprime 10 underscores
p"Fim - Metodos"


p"ladyprimm".capitalize #imprime a primeira letra maiuscula
