class ContasBancarias
    attr_accessor :nomeProprietario, :saldo
    
    def initialize(nomeProprietario, saldo_inicial)
        @nomeProprietario = nomeProprietario
        @saldo = saldo_inicial
    end

    def imprimir_saldo
        puts "Saldo: #{@saldo} da conta de #{@nomeProprietario}"
    end

    def transferir(valor, conta)
        if @saldo >= valor
            retirar(valor)
            conta.depositar(valor)
        else
            raise "Saldo insuficiente"
        end
    end

    private def retirar(valor)
        @saldo -= valor
    end
    protected def depositar(valor)
        @saldo += valor
    end

end
