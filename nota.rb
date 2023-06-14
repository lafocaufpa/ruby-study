require_relative 'disciplina'
require_relative 'aluno'

class Nota
    attr_reader :disciplina, :nota, :aluno

    def initialize(disciplina, nota, aluno)
      @disciplina = disciplina
      @nota = nota
      @aluno = aluno
    end

    #CREAT: Método para adicionar a nota de uma disciplina para um aluno
    def self.notaAluno(nota, matricula, disciplina)
        aluno = @aluno.find { |a| a.matricula == matricula}
        
        @nota << nota
    end

    #READ: Método para exibir as notas dos alunos de acordo com suas disciplinas
    def self.listaNota
        if @nota.nil? || @nota.empty?
            puts "Nenhuma nota inserida!"
        else
            @nota.each do |n|
                puts "                ===== Lista das Nota dos Aluno =====\n
                Auno: #{p.nome_completo}\n
                Disciplina: #{p.getDisciplina}\n
                Nota: #{p.getNota}\n
                -----------------------------------\n"
            end
        end
    end

    #Getters methods
    def getDisciplina
        return @disciplina
    end

    def getNota
        return @nota
    end

    def getAluno
        return @aluno
    end

    #Setters Methods
    def setDisciplina=(disciplina)
        @disciplina = disciplina
    end

    def setNota=(nota)
        @nota = nota
    end

    def setAluno=(aluno)
        @aluno = aluno
    end
end