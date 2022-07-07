require "./exercicio/ContasBancarias.rb"
require "./exercicio/ContaCorrente.rb"

conta_deysi = ContasBancarias.new("Deysi", 100)
conta_deysi.imprimir_saldo
conta2 = ContasBancarias.new("Luana", 100)
conta2.imprimir_saldo
conta_deysi.transferir(50, conta2)

p "Depois da transferencia o saldo da conta deysi #{conta_deysi.saldo}" 
p "Depois da transferencia o saldo da conta 2 #{conta2.saldo}"
begin
    conta_deysi.transferir(60, conta2)
rescue StandardError => exception
    puts "Erro: #{exception.message}"
end 

puts"\n"
puts"\n"

conta_deysi2 = ContaCorrente.new("Deysi", 100)
conta_luana = ContasBancarias.new("Luana", 100)

begin
    conta_deysi2.transferir(50, conta_luana)
rescue StandardError => exception   
    puts "Erro: #{exception.message}"
end

p "Transferencia com taxa o saldo da conta da deysi #{conta_deysi2.saldo}" 
p "Transferencia com taxa o saldo da conta da Luana #{conta_luana.saldo}"
