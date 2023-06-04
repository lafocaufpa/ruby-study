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
    
    #Array para guardar todos os alunos cadastrados no sistema 
    def self.alunosCadastrados(aluno)
        @aluno ||= []
        @aluno << aluno
    end

    
    #Exibi todos os alunos cadastrados na escola
    def self.listarAlunos
        if @aluno.nil? || @aluno.empty?
            puts "Nenhum aluno cadastrada."
        else
            @aluno.each do |al|
                puts al.nome_completo
            end
        end
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