# esempio definizione CLASSE
class Persona
	# initialize è il costruttore
	def initialize (nome, eta)
		# var istanza con il @
		@nome = nome
		@eta = eta
	end

	# i metodi hanno ACCESSO PUBBLICO DIVERSAMENTE
	# DALLE VAR D'ISTANZA
	def get_info
		# definisco una nuova var d'istanza
		@info_aggiuntive = "Interessante"
		# valore di ritorno
		"Nome: #{@nome}, eta: #{@eta}"
	end
end

# definisco una nuova istanza
persona1 = Persona.new("Joe", 14)

# METODO instance_variables RECUPERA LE VAR ISTANZA
p persona1.instance_variables
# [:@nome, :@eta]

puts persona1.get_info
# Nome: Joe, eta: 14

# recupero ancora var istanza
p persona1.instance_variables
# [:@nome, :@eta, :@info_aggiuntive]