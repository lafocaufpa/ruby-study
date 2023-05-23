require_relative 'professor'
require_relative 'aluno'
require_relative 'disciplina'
require_relative 'turma'
module CadastrarAluno
    def cadastrar_aluno

        puts "Insira o nome do aluno:"
        nomeAluno = gets.chomp.to_s

        puts "Insira o sobrenome do aluno:"
        sobrenomeAluno = gets.chomp.to_s

        puts "Insira a idade do aluno:"
        idadeAluno = gets.chomp.to_i

        puts "Insira o rg do aluno:"
        rgAluno = gets.chomp.to_i

        puts "Insira o numero de matricula do aluno:"
        matricula = gets.chomp.to_i

        puts "Insira a data de nascimento do aluno:"
        dataNascimento = gets.chomp.to_s


        aluno = Aluno.new(nomeAluno, sobrenomeAluno, idadeAluno, rgAluno, matricula, dataNascimento)
        
        puts "Aluno cadastrado com sucesso!"
    end
end

module CadastrarProfessor
    def cadastrar_professor

        puts "Insira o nome do professor:"
        nomeProfessor = gets.chomp.to_s

        puts "Insira o sobrenome do professor:"
        sobrenomeProfessor = gets.chomp.to_s

        puts "Insira a idade do professor:"
        idadeProfessor = gets.chomp.to_i

        puts "Insira o rg do professor:"
        rgProfessor = gets.chomp.to_i

        puts "Insira o salario do professor:"
        salario = gets.chomp.to_f

        puts "Insira a CH do professor:"
        chProfessor = gets.chomp.to_i

        puts "Insira o ID do professor:"
        idadeProfessor = gets.chomp.to_i


        professor = Professor.new(nomeProfessor, sobrenomeProfessor, idadeProfessor, rgProfessor, salario, chProfessor, idadeProfessor)

        puts "Professor cadastrado com sucesso!"
    end
end

module CadastrarTurma
    def cadastrar_turma

        puts "Insira o nome da turma:"
        nomeTurma = gets.chomp.to_s

        puts "Insira o ID da turma:"
        idTurma = gets.chomp.to_i

        puts "Insira o professor responsável:"
        professor = gets.chomp.to_i

        puts "Insira a capacidade maxima da turma:"
        capacidadeMaxima = gets.chomp.to_i

        turma = Turma.new(nomeTurma, idTurma, professor, capacidadeMaxima)

        puts "Turma cadastrada com sucesso!"
    end
end

module CadastrarDisciplina
    def cadastrar_disciplina

        puts "Insira o nome da turma:"
        nomeDisciplina = gets.chomp.to_s

        puts "Insira CH da disciplina:"
        chDisciplina = gets.chomp.to_i

        puts "Insira data de inicio:"
        dataInicio = gets.chomp.to_s

        puts "Insira data de termino:"
        dataTermino = gets.chomp.to_s

        disciplina = Disciplina.new(nomeDisciplina, chDisciplina, dataInicio, dataTermino)
        
        puts "Disciplina cadastrada com sucesso!"
    end
end