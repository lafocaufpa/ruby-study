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
        @list_pessoas ||= []
        @list_pessoas << pessoa
    end

end

class Exemplo
include Cadastro

    def listar_pessoas
        if @list_pessoas.nil? || @list_pessoas.empty?
            puts "Nenhuma pessoa cadastrada."
          else
            @list_pessoas.each do |pessoa|
              puts pessoa.nome
            end
        end
    end
end

exemplo = Exemplo.new

exemplo.cadastrar

exemplo.listar_pessoas
