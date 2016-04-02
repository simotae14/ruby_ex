# nome file 050_team.rb
# che includa Enumerable
class Team
	include Enumerable

	attr_reader :nome, :giocatori

	# costruttore
	def initialize (nome)
		@nome = nome
		@giocatori = []
	end

	# definisco metodo con splat
	def aggiungi_giocatori (*giocatori)
		@giocatori += giocatori
	end

	def to_s
		"#{@nome} team: #{@giocatori.join(", ")}"
	end

	# DEFINISCO each per usare ENUMERABLE
	def each
		@giocatori.each { |giocatore| yield giocatore }
	end
end