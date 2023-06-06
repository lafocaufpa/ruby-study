class Disciplina

    attr_reader :nome, :carga_horaria, :data_inicio, :data_termino, :id

    # Método construtor da classe

    def initialize (nome, carga_horaria, data_inicio, data_termino, id)
        @nome = nome
        @carga_horaria = carga_horaria
        @data_inicio = data_inicio
        @data_termino = data_termino
        @id = id
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
            puts "Nenhuma disciplina cadastrada!"
        else
            @disciplina.each do |d|
                puts "                ===== Lista das Disciplinas =====\n
                Disciplina: #{d.getNome}\n
                Carga Horária: #{d.getCargaHoraria} horas\n
                Período: #{d.getPeriodo}\n
                -------------------------------\n"
            end
        end
    end

    #UPDATE: Método para atualizar uma disciplina cadastrada
    def self.updateDisciplina
        if @disciplina.nil? || @disciplina.empty?
            puts "Nenhuma Disciplina cadastrada!"
        else
            puts "Digite o ID da Disciplina que deseja atualizar: "
            id = gets.chomp.to_i
            disciplinaEncontrada = false
            @disciplina.each do |d|
                if d.getId == id
                    puts "===== ATUALIZAR OS DADOS DA DISCIPLINA =====" 
                    puts "Insira o nome da turma:"
                    nomeDisciplina = gets.chomp.to_s
                    d.setNome=(nomeDisciplina)

                    puts "Insira CH da disciplina:"
                    chDisciplina = gets.chomp.to_i
                    d.setCargaHoraria=(chDisciplina)

                    puts "Insira data de inicio:"
                    dataInicio = gets.chomp.to_s
                    d.setDataInicio=(dataInicio)

                    puts "Insira data de termino:"
                    dataTermino = gets.chomp.to_s
                    setDataFim=(dataTermino)

                    puts "Disciplina atualizada com sucesso!"
                    disciplinaEncontrada = true
                end
            end

            #Método para exibir uma mensagem se o ID da disciplina não for encontrada
            unless disciplinaEncontrada
                puts "ID da Disiciplina não encontrada!"
            end
        end
    end

    #DELETE: Método para excluir uma disciplina cadastrada
    def self.deleteDisciplina
        if @disciplina.nil? || @disciplina.empty?
            puts "Nenhuma Disciplina cadastrada!"
        else
            puts "Digite o ID da Disciplina que deseja excluir"
            id = gets.chomp.to_i
            disciplinaEncontrada = false
            @disciplina.delete_if do |d|
                if d.getId == id
                    disciplinaEncontrada = true
                    true
                else
                    false
                end
            end
            
            #Exibi uma mensagem se o ID da Disciplina não seja encontrado
            unless disciplinaEncontrada
                puts "ID da Disciplina não encontrada!"
            else
                puts "Disciplina excluída com sucesso!"
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