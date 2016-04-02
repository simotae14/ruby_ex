# esempio di metodi GETTER e SETTER
class Persona
	# costruttore
	def initialize(nome, eta)
		@nome = nome
		@eta = eta
	end

	# creo GETTER nome
	def nome
		@nome
	end
	# creo SETTER
	def nome= (nuovo_nome)
		@nome = nuovo_nome
	end
end

# creo istanza persona
persona1 = Persona.new("Joe", 14)
# stampo nome istanza
puts persona1.nome
# Joe

# setto valore del nome
persona1.nome = "Mike"

# stampo nuovo valore del nome
puts persona1.nome
# Mike