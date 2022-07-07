class MinhaClasse

end

objeto = MinhaClasse.new

p objeto.object_id

p "__________________________________________"
puts"\n"

class Pessoa
      def imprimir_ola(nome, idade)
        nome = nome
        idade = idade
        puts "Olá, meu nome é #{nome} e tenho #{idade} anos"
    end
end

deysi = Pessoa.new
luana = Pessoa.new

deysi.imprimir_ola("Deysi", 26)
luana.imprimir_ola("Luana", 26)

p "__________________________________________"
puts"\n"

#Colocando @ na frente do nome da variável faz com que ela seja privada e possa ser usada durante todo o ciclo de vida do objeto enquanto ele estiver na memória
#Essa variável so poderá ser acessada dentro da classe
#O exemplo alterara  a variável sempre que o objeto for criado
#Para que possa acessar as variaveis fora do objeto é necessario criar um metodo que retorne so as variaveis de instancia
class Pessoa
    def imprimir_ola(nome, idade)
        @nome = nome
        @idade = idade 
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos"
    end

    def nome
        @nome
    end
    def idade
        @idade
    end
end

obj = Pessoa.new
obj.imprimir_ola("deysi", 26)

p "__________________________________________"
puts"\n"

#Criando um construtor para o objeto para que possa ser criado sempre com os valores padrões
#Método initialize é um construtor
#Agora as variaveis serão setadas sempre que o objeto for criado
#Agora o parametro nome e idade será obrigatório

class Pessoa
    def initialize(nome, idade)
        @nome = nome
        @idade = idade        
    end

    def imprimir_ola
        puts "Olá, meu nome é #{@nome} e tenho #{@idade} anos"
    end

    def nome#esse metodo so retorna a variavel de instancia => getter
        @nome
    end
    def idade
        @idade
    end
    def nome=(novo_nome)#esse método permite que trocar o valor da variavel nome para um novo valor => setter
        @nome = novo_nome
    end
end

pessoa = Pessoa.new("Deysi", 26)
pessoa.imprimir_ola
p pessoa.nome
p pessoa.idade
p pessoa.nome = "Luana"
p "__________________________________________"
puts"\n"
# usando attr_accessor para criar os metodos(getter e setter) de acesso a variaveis de instancia
class Pessoa
    attr_accessor :nome, :idade# getter e setter
    # attr_reader :nome #getter
    # attr_writer :nome #setter

    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def imprimir_ola
      nome = nome
      idade = idade
      puts "Olá, meu nome é #{nome} e tenho #{idade} anos"
  end
end

pessoa = Pessoa.new("Deysi", 26)
p pessoa.nome
pessoa.nome = "Luana"
p pessoa.nome