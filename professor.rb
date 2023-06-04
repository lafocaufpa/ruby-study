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

    #Método para cadastrar os professores em um array
    def self.cadastrarProfessor(professor) 
        @professor ||= []
        @professor << professor
    end

    #Método para listar todos os professores cadastrados no sistema
    def self.listarProfessores
        if @professor.nil? || @professor.empty?
            puts "Nenhum professor cadastrada."
        else
            @professor.each do |p|
                puts p.nome_completo
            end
        end
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