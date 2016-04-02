# classe che poi testeremo
class Calcolo
	attr_reader :nome
	def initialize(nome)
		@nome = nome
	end

	# definisco somma
	def somma(uno,due)
		uno + due # ERRATO
	end

	# definisco sottrazione
	def sottrazione(uno,due)
		uno - due # ERRATO
	end

	# divsione
	def divisione(uno, due)
		uno / due
	end
end