module Pessoa

    attr_reader :nome, :sobrenome, :idade, :rg

    # Métodos Getters

    # Metodo que retorna o nome completo da pessoa
    def nome_completo
        "#{@nome} #{@sobrenome}"
    end

    # Metodo que retorna a idade da pessoa
    def idade
        @idade
    end

    # Metodo que retorna o rg da pessoa
    def rg
        @rg
    end

    # Métodos Setters

    # Método para atualizar o nome da pessoa
    def nome=(nome)
        @nome = nome
    end

    # Método para atualizar o sobrenome da pessoa
    def sobrenome=(sobrenome)
        @sobrenome = sobrenome
    end

    # Método para atualizar a idade da pessoa
    def idade=(idade)
        @idade = idade
    end

    # Método para atualizar o rg da pessoa - (Verificar se é necessário!)
    def rg=(rg)
        @rg = rg
    end


end