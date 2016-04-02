# esempio uso MODULI COME MIXIN PER REALIZZARE
# EREDITARIETA MULTIPLA
module DireMioNome
	attr_accessor :nome
	def stampa_nome
		puts "Nome: #{@nome}"
	end
end

# creo classe Persona includendo il modulo
class Persona
	include DireMioNome
end

class Compagnia
	include DireMioNome
end

# creo istanza di Persona
persona = Persona.new
# setto nome grazie a mixin
persona.nome = "Joe"

# uso metodo del modulo
persona.stampa_nome
# Nome: Joe

# creo istanza di Compagnia
compagnia = Compagnia.new
# setto nome grazie a mixin
compagnia.nome = "Google & Microsoft LLC"

# uso il metodo del modulo
compagnia.stampa_nome
# Nome: Google & Microsoft LLC