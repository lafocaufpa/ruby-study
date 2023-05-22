class Pessoa

    attr_accessor :nome, :id

    def initialize(nome, id)
        @nome = nome
        @id = id
    end


end

module Cadastro


    def cadastrar
        puts "insira um nome:"
        nome = gets.chomp.to_s

        puts "insira um ID"
        id = gets.chomp.to_i

        pessoa = Pessoa.new(nome, id)
        list_pessoa = []
        list_pessoa << pessoa
    end

end

class Exemplo
include Cadastro
end

exemplo = Exemplo.new

exemplo.cadastrar



