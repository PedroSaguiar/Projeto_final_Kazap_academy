#cria a tabela de clientes
Sequel.migration do 
    change do 
        create_table(:clients) do
            primary_key :id
            String :name, size: 100, null: false
            String :document, size: 100, null: false
            String :adress, size: 100, null: false
            String :number_phone, size: 100, null: false
        end 
    end 
end 