
module Interface
    #Intercade da partes de contas
    def interface_account
        loop do 
            puts 'leias as opções abaixo:'
            puts '1- Criar'
            puts '2- Vizualizar'
            puts '3- Excluir'
            puts '4- Fazer alguma operação'
            puts '5- Sair'
            option = gets.to_i

            case: option
            when 1
                create_account
            when 2
                visualize
            when 3 
                delete
            when 4
                interface_operation
            when 5
                puts "Encerrando, tenha um bom dia"
                break
            else 
                puts 'Selecione uma opção valida'
            end 
        end 
    end 
    #Mostra a interface de operações
    def interface_operation
        loop do 
            puts 'Qual sera a operação:'
            puts '1- Depósito'
            puts '2- Saque'
            puts '3- Transferencia'
            puts '4- Sair'
            option = gets.to_i

            case: option
            when 1
                deposit
            when 2
                withdrawal
            when 3 
                transfer
            when 4
                puts "Encerrando operações"
                break 
            else 
                puts 'Selecione uma opção valida'
            end 
        end 
    end  

    private 
    # Função que cria a conta
    def create_account
        print "Digite o numero do cliente para associar a conta: "
        client_id = gets.chomp.to_i
        if client_id.exist?
            client = client_id
        else
            puts 'Cliente não encontrado, verifique a numeração'
            return
        end 
    
        print "Digite o número da conta: "
        account_number = gets.chomp.strip
        
        #ve a conta e coloca o numero e define o saudo em 0 reais
        account = client.accounts.create(account_number: account_number, balance: 0)
        if account.valid?
          puts "Conta criada com sucesso!"
        else
          puts "Erro ao criar a conta. Verifique os dados e tente novamente."
        end
      
    end 

    # Mostra as contas de um cliente
    def visualize
        print 'Digite o numero do cliente: '
        client_id = gets.chom.i
        if client_id.exist?
            client.account.each do |account_number, balance|
                puts "O numero é #{account_number} e seu saldo: #{balance}"
            end 
        end 
    end 

    #Deleta a conta desejada do cliente
    def delete
        print 'Digite o numero do cliente:'
        client_id = gets.chom.i
        if client_id.exist?
            print 'Por favor, digite o numero da conta que deseja excluir:  '
            account_number = gets.chomp.to_i
            if account_number.exist?
                puts "deletando a conta #{account_number}"
                account_number.delete
            else 
                puts "A conta não existe"
            end 
        else 
            puts "o cliente não existe"
        end 
    
    end 


    # utilizado para pegar o valor que sera usado ou para deposito ou para saque
    def action
        puts 'Lembrete: para casas decimais utilize ponto(.) e coloque duas casa decimais'
        print 'qual é o valor?: '
        @quantity = gets.chomp
        if /^\d+\.\d\d$/.match?(@quantity)
            @quantity = @quantity.to_f
        else
            puts 'Insira um valor vaido'
            puts 'E certifiqui-se que colocou as duas casas decimais'
        end 

    end
    #pega o valor da função action e soma ao saldo
    def deposit
        action 
        if @quantity > 0
            @quantity + :balance
        else 
            puts 'O valor deve ser maior que Zero'
        end 
    end 
    #pega o valor da função action e subtrai do saldo
    def withdrawal
        action
        if @quantity > 0
            @quantity - :balance
        else 
            puts "O valor deve ser maior que zero"
        end
    end 

        def transfer 
            puts 'digite o numero da conta'
        end 
        
    

end 