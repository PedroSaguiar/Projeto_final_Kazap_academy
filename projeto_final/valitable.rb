module Valitable
    # Coleta todas as informações e valida elas
    require './addressable'

    def valitable
       validate_name(:name) 
       validate_document(:document)
       validate_address(:adress)
    end 

    private
    #A regex valida se é um nome ou não
    def validate_name(name)
        if /^[A-Za-z]+$/.match?(name)            
        else 
            puts 'insira um nome valido'
        end 
    end 
    #A regex valida se o documento é CPF/CNPJ
    def validate_document(document)
        if /(^\d{3}\.\d{3}\.\d{3}\-\d{2}$)|(^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$)/.match?(document)
        else 
            puts 'insira um documento valido'
        end
    end 

end 

