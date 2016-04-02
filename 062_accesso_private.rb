# SOLO IL SETTER PUO ESSER ACCEDUTO COME METODO
# PRIVATO
class Persona
	def initialize(eta)
		self.eta = eta # col self vi posso accedere altrimenti
		# no
		puts mia_eta
		# mentre
		# puts self.mia_eta è ILLEGALE
	end

	private
		def mia_eta
			@eta
		end
		def eta=(eta)
			@eta = eta
		end
end

Persona.new(25)
# 25