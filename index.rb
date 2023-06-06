require_relative 'cadastro'

def menu
    puts "------------"
    puts "MENU SISTEMA"
    puts "------------"
    puts "-------------------------------"
    puts "1 - ÁREA DE CADASTRO"
    puts "2 - ÁREA DE GERENCIAMENTO"
    puts "3 - SAIR"
    puts "-------------------------------"
    op = gets.chomp.to_i
end
def select 
    cadastro = Cadastro.new
    opcao = menu
    while opcao != 3
        if opcao == 1
            cadastro.cadastro
        elsif opcao == 2
            
            cadastro.gerenciamento
        else
            puts "Opção inválida, tente novamente!"
        end
        opcao = menu
    end
end
select