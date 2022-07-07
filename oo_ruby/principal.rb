require "awesome_print"
require "./classes/pessoa.rb"
require "./classes/carro.rb"

obj1 = Pessoa.new("Deysi")
obj2 = Carro.new("Fusca", obj1)

ap obj1
ap obj2