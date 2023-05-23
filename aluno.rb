require_relative 'pessoa'
class Aluno < Pessoa
    attr_reader :matricula, :dataNascimento

    def initialize(nome, sobrenome, idade, rg, matricula, dataNascimento)
      @nome = nome
      @sobrenome = sobrenome
      @idade = idade
      @rg = rg
      @matricula = matricula
      @dataNascimento = dataNascimento
      @disciplina = nil
    end


    #Getters Methods
    def getMatricula
        return @matricula
    end

    def getDataNascimento
        return @dataNascimento
    end

    def getDisciplina
        if disciplina.nil?
            puts "Ops! Ainda não tem disciplina cadastrada"
        else
            return @disciplina
        end
    end

    #Setters Methods
    def setMatricula=(matricula)
        @matricula = matricula
    end

    def setDataNascimento=(dataNascimento)
        @dataNascimento = dataNascimento
    end

    #Método para associar um Aluno à uma turma
    def associar_disciplina(disciplina)
        @disciplina = disciplina
    end
end