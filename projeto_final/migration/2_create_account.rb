#cria a tabela de contas 
Sequel.migration do 
    change do 
        create_table(:account) do
            primary_key :id
            foreign_key :clients_id, :clients
            Float :balance, null: false
        end 
    end 
end