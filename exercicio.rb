# Definir o método que verifica palindromo
# Usar gets para pedir input de dados e chamar método
# Imprimir se for palindromo ou não

def palindromo(palavra)
    palavraInvertida = palavra.reverse
end
# p "Digite a palavra para verificação"
# palavra = gets.chomp.downcase
# palindromo(palavra)
# if(palavra == palindromo(palavra))#imprime quando a for condição verdadeira
#     p "A palavra é um palindromo"
# end
# unless  (palavra == palindromo(palavra)) #imprime quando a for condição falsa
#     p "A palavra não é um palindromo"
# end

def palindromo?(palavra)
    palavra == palavra.reverse
end
palavra = gets.chomp.downcase

 palindromo?(palavra) == true ? ( p"é um palindromo") : ( p "Não é palindromo")

