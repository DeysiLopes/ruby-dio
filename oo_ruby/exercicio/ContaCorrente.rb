class ContaCorrente < ContasBancarias
    TAXA = 2 #constante
    # def self.taxa #método de classes
    #     2
    # end

    def transferir(valor, outra_conta)
        if @saldo >= valor
            super
            retirar(TAXA) 
        end
    end

end