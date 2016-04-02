# esempio uso ||

class Persona
	attr_reader :eta
	attr_accessor :nome

	def initialize (nome, eta)
		@nome = nome
		# invoco metodo setter
		self.eta = eta
	end

	def eta= (nuova_eta)
		# uso || operator per settare eta
		@eta ||= 5 # default il 5
		@eta = nuova_eta unless nuova_eta > 120
	end
end


# creo nuova istanza
persona1 = Persona.new("Kim", 130)

puts persona1.eta
# 5

persona1.eta = 10
puts persona1.eta
# 10

persona1.eta = 200
puts persona1.eta
# 10