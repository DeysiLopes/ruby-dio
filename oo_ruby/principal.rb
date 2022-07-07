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

p "__________________________________________"
puts"\n"

class MinhaClasse
    def m1
        puts "m1"
    end
    private def m2
        puts "m2"
    end
    def m3
        puts "m3"
    end
    protected def m5
        puts "m5"
    end
   
end
class MinhaClasse2 < MinhaClasse
    def m4
        m1
        m2
        m3
        obj3 = MinhaClasse.new
        puts "m4"
        obj3.m5
    end
end 

obj5 = MinhaClasse2.new
obj5.m4