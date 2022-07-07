class ContaCorrente < ContasBancarias
    def transferir(valor, outra_conta)
        if @saldo >= valor
            super
            retirar(2)  
        end
    end

end