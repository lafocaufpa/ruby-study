require_relative 'pessoa'
class Professor < Pessoa
    attr_reader :salario, :cargaHoraria, :idFuncionario

    def initialize(nome, sobrenome, idade, rg, salario, cargaHoraria, idFuncionario)
      @nome = nome
      @sobrenome = sobrenome
      @idade = idade
      @rg = rg 
      @salario = salario
      @cargaHoraria = cargaHoraria
      @idFuncionario = idFuncionario
      @turma = nil
    end

    #Getter Methodturma
    def getSalario
        return @salario
    end

    def getCargaHoraria
        return @cargaHoraria
    end

    def getIdFuncionario
        return @idFuncionario
    end

    def getTurma
        return @turma 
    end

    #Setters Methods
    def setSalario=(salario)
        @salario = salario.to_f
    end

    def setCargaHoraria=(cargaHoraria)
        @cargaHoraria = cargaHoraria
    end
    
    def setTurma=(turma)
        @turma = turma
    end    
end