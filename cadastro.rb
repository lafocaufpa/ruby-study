require_relative 'dados'
class Cadastro
    include CadastrarAluno
    include CadastrarProfessor
    include CadastrarTurma
    include CadastrarDisciplina
    include NotaAluno

    def menuCadastro 
        puts "------------"
        puts "MENU DE CADASTRO"
        puts "------------"

        puts "-------------------------------"
        puts "1 - Cadastrar Aluno"
        puts "2 - Cadastrar Turma"
        puts "3 - Cadastrar Disciplina"
        puts "4 - Cadastrar Professor"
        puts "5 - Adicionar nota para o Aluno"
        puts "6 - SAIR"
        puts "-------------------------------"
        op = gets.chomp.to_i 
    end

    def cadastro
        opcao = menuCadastro
        while opcao != 6
            if opcao >= 1 && opcao <=6
                case opcao
                when 1 
                    cadastrar_aluno
                when 2
                    cadastrar_turma
                when 3 
                    cadastrar_disciplina
                when 4
                    cadastrar_professor
                else 
                    nota_aluno
                end
            else
                puts "OPÇAO NÃO DISPONÍVEL"
            end
            opcao = menuCadastro
        end
    end

    def menuGerenciamento
        puts "------------"
        puts "MENU DE GERENCIAMENTO"
        puts "------------"

        puts "-------------------------------"
        puts "1 - Listar Aluno"
        puts "2 - Listar Turma"
        puts "3 - Listar Disciplina"
        puts "4 - Listar Professor"
        puts "5 - Editar Professor"
        puts "6 - Excluir Professor"
        puts "7 - Editar Disciplina"
        puts "8 - Excluir Disciplina"
        puts "9 - Listar Nota dos alunos"
        puts "10 - SAIR"
        puts "-------------------------------"
        op = gets.chomp.to_i 
    end
    
    def gerenciamento 
        opcao = menuGerenciamento
        while opcao != 10
            if opcao >= 1 && opcao <=10
                case opcao
                when 1 
                    Aluno.listarAlunos
                when 2
                    Turma.listarTurmas
                when 3 
                    Disciplina.listarDisciplinas
                when 4
                    Professor.listarProfessores
                when 5
                    Professor.updateProfessor
                when 6
                    Professor.deleteProfessor
                when 7
                    Disciplina.updateDisciplina
                when 8
                    Disciplina.deleteDisciplina
                else
                    Nota.listaNota
                end
            else
                puts "OPÇAO NÃO DISPONÍVEL"
            end
            opcao = menuGerenciamento
        end
    end
end
