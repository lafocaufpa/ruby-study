class turma

    attr_reader :nomeTurma, :id, :professor, :capacidade_maxima

    # Método Construtor da classe
    def initialize(nomeTurma, id, professor, capacidade_maxima)
        @nomeTurma = nomeTurma
        @id = id
        @professor = professor
        @capacidade_maxima = capacidade_maxima
        @lista_disciplinas = []
    end

    # Método para adicionar disciplina a lista de disciplina e associar a turma a uma disciplina
    def cadastrar_disciplina(disciplina)
        @lista_disciplinas << disciplina
        disciplina.associar_turma(self)
    end

    # Métodos Getters

    # Método que retorna o nome da turma
    def getNomeTurma
        @nomeTurma
    end

    # Método que retorna o id da turma
    def getId
        @id
    end

    # Método que retorna o professor da turma
    def getProfessor
        @professor
    end

    # Método que retorna a capacidade máxima da turma
    def getCapacidadeMaxima
        @capacidade_maxima
    end

    # Método que retorna a lista de disciplinas da turma
    def getListaDisciplinas
        @lista_disciplinas
    end

    # Métodos Setters

    # Método para atualizar o nome da turma
    def setNomeTurma=(nomeTurma)
        @nomeTurma = nomeTurma
    end

    # Método para atualizar o id da turma - (Verificar se é necessário!)
    def setId=(id)
        @id = id
    end

    # Método para atualizar o professor da turma
    def setProfessor=(professor)
        @professor = professor
    end

end