require_relative 'disciplina'
require_relative 'aluno'

class Nota
    attr_reader :disciplina, :nota, :aluno

    def def initialize(disciplina, nota, aluno)
      @disciplina, nota, aluno = disciplina, nota, aluno
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