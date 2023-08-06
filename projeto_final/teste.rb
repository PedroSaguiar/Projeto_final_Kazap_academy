require 'sequel'
require './interface'
require './valitable'
require './addressable'
#cria o DB de clientes
DB = Sequel.sqlite('db/cliets.db')
#tentativa de rodar as migrations 
Sequel::Migrator.run [DB, '/migration'] 


clients = DB(:clients)
#tentativa de criar uma interface de login
puts "Bem vindo ao sistema de contas:"
puts "1- Ja é cadastrado?"
puts "2- Ou deseja se cadastrar"
print 'escolha uma opção: '
option = gets.chomp.to_i

case option
when 1
    print 'digite o numero do cliente: '
    client_id = gets.chomp.to_i
    if client_id 


