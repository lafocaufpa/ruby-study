class Disciplina

    attr_reader :nome, :carga_horaria, :data_inicio, :data_termino

    # Método construtor da classe

    def initialize (nome, carga_horaria, data_inicio, data_termino)
        @nome = nome
        @carga_horaria = carga_horaria
        @data_inicio = data_inicio
        @data_termino = data_termino
        @lista_alunos = []
        @turma = nil
    end

    #Método para armazenar as disciplinas em um array
    def self.cadastrarDisciplina(disciplina)
        @disciplina ||= []
        @disciplina << disciplina
    end

    #Método para listar todas as Disciplinas cadastradas no sistema
    def self.listarDisciplinas
        if @disciplina.nil? || @disciplina.empty?
            puts "Nenhum disciplina cadastrada."
        else
            @disciplina.each do |d|
                puts d.nome
            end
        end
    end

    # Método para associar disciplina a turma
    def associar_turma(turma)
        @turma = turma
    end

    # Método para associar aluno a disciplina
    def associar_aluno(aluno)
        @lista_alunos << aluno
        aluno.associar_disciplina(self) #Criar o método 'associar_disciplina' na classe aluno [@edinaldo_Henriques]
    end

    #Método para listar os alunos da Disciplina
    def listarAlunos
        @lista_alunos.each do |aluno|
            puts "Nome: #{aluno.nome} #{aluno.sobrenome}"
        end
    end

    # Métodos Getters

    def getId
        @id
    end

    def getNome
        @nome
    end

    def getCargaHoraria
        @carga_horaria
    end

    def getPeriodo
        "#{@data_inicio} - #{@data_termino}"
    end

    def getListaDisciplinas
        @lista_disciplinas
    end

    def getTurma
        @turma
    end

    # Métodos Setters

    def setId=(id)
        @id = id
    end

    def setNome=(nome)
        @nome = nome
    end

    def setCargaHoraria=(carga_horaria)
        @carga_horaria = carga_horaria
    end

    def setDataInicio=(data_inicio)
        @data_inicio = data_inicio
    end

    def setDataFim=(data_fim)
        @data_termino = data_fim
    end

end