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
            puts "Nenhum professor cadastrada!"
        else
            @professor.each do |p|
                puts "                ===== Lista dos Professores =====\n
                Nome Completo: #{p.nome_completo}\n
                Idade: #{p.idade}\n
                RG: #{p.rg}\n
                Salário: #{p.getSalario}\n
                Carga Horária: #{p.getCargaHoraria}\n
                -------------------------------\n"
            end
        end
    end

    #UPDATE: Método para atualizar um professor cadastrado 
    def self.updateProfessor
        if @professor.nil? || @professor.empty?
            puts "Nenhum Professor cadastrado!"
        else
            puts "Digite o ID do Professor que deseja atualizar"
            id = gets.chomp.to_i
            professorEncontrado = false
            @professor.each do |p| 
                if p.getIdFuncionario == id
                    puts "===== ATUALIZAR OS DADOS DO PROFESSOR ====="
                    puts "Insira o nome do professor:"
                    nomeProfessor = gets.chomp.to_s
                    p.nome=(nomeProfessor)

                    puts "Insira o sobrenome do professor:"
                    sobrenomeProfessor = gets.chomp.to_s
                    p.sobrenome=(sobrenomeProfessor)

                    puts "Insira a idade do professor:"
                    idadeProfessor = gets.chomp.to_i
                    p.idade=(idadeProfessor)

                    puts "Insira o rg do professor:"
                    rgProfessor = gets.chomp.to_i
                    p.rg=(rgProfessor)

                    puts "Insira o salario do professor:"
                    salario = gets.chomp.to_f
                    p.setSalario=(salario)

                    puts "Insira a CH do professor:"
                    chProfessor = gets.chomp.to_i
                    p.setCargaHoraria=(chProfessor)

                    professorEncontrado = true
                    puts "Professor atualizado com sucesso!"
                end
            end
            #Exibi uma mensagem seo ID do professor não seja encontrado
            unless professorEncontrado
                puts "ID do Professor não encontrado!"
            end
        end
    end 

    #DELETE: Método para deletar um professor cadastrado
    def self.deleteProfessor
        if @professor.nil? || @professor.empty?
            puts "Nenhum Professor cadastrado!"
        else
            puts "Digite o ID do Professor que deseja excluir: "
            id = gets.chomp.to_i
            professorEncontrado = false
            @professor.delete_if do |p|
                if p.getIdFuncionario == id
                    professorEncontrado = true
                    true
                else
                    false
                end
            end

            #Exibi uma mensagem se o ID do professor não seja encontrado
            unless professorEncontrado
                puts "ID do Professor não encontrado!"
            else
                puts "Professor excluído com sucesso!"
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
        @salario = salario
    end

    def setCargaHoraria=(cargaHoraria)
        @cargaHoraria = cargaHoraria
    end
    
    def setTurma=(turma)
        @turma = turma
    end    
end