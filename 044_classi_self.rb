# uso del self per ACCEDER A METODI D ISTANZA
class Persona
	# creo solo getter per eta
	attr_reader :eta
	# getter e setter per nome
	attr_accessor :nome

	# creo costruttore
	def initialize (nome, etaVar)
		@nome = nome
		# uso il self PER RICHIAMRE IL SETTER eta
		self.eta = etaVar
		puts eta
	end

	# creo SETTER eta
	def eta= (nuova_eta)
		@eta = nuova_eta unless nuova_eta > 120
	end
end

# creo istanza di Persona
persona1 = Persona.new("Kim", 13)
# 13

puts "La mia eta e #{persona1.eta}"
# La mia eta e 13
persona1.eta = 130
# l eta non è cambiata perché è un valore fuori range
puts persona1.eta
# 13