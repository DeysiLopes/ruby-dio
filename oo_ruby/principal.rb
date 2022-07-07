require "awesome_print"
require "./classes/pessoa.rb"
require "./classes/carro.rb"

obj1 = Pessoa.new("Deysi")
obj2 = Carro.new("Fusca", obj1)

ap obj1
ap obj2 

p "__________________________________________"
puts"\n"

class Pessoa2 
    @@numero_de_pessoas = 0
    def self.gerar 
        @@numero_de_pessoas += 1
        puts "Gerando pessoa..."
        Pessoa2.new
    end
    def self.numero_de_pessoas
        @@numero_de_pessoas
    end
end

person = Pessoa2.gerar
person = Pessoa2.gerar
person = Pessoa2.gerar
person = Pessoa2.gerar
p Pessoa2.numero_de_pessoas