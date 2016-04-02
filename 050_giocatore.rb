# nome file 050_giocatore.rb
class Giocatore

	attr_reader :nome, :eta, :livello_skill

	# costruttore
	def initialize (nome, eta, livello_skill)
		@nome = nome
		@eta = eta
		@livello_skill = livello_skill
	end

	# definisco metodo to_s
	def to_s
		"<#{nome}: #{livello_skill}(SL), #{eta}(ETA)>"
	end
end