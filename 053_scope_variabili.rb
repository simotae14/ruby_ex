# esempio di scope interno ed esterno a classi
# e metodi

# definisco una var esterno
v1 = "fuori"

# creo una classe che DEFINISCE UN NUOVO SCOPE
class MiaClasse
	def mio_metodo
		# se stampo v1 ho UN'ECCEZIONE PERCHE' NN E' DEFINITA
		# NELLO SCOPE CORRENTE
		# p v1
		# undefined local variable or method `v1'
		v1 = "dentro"
		p v1
		# stampo le var locali
		p local_variables
	end
end

p v1
# fuori
obj = MiaClasse.new
obj.mio_metodo
# dentro
# [:v1]

# stampo le var locali scope file
p local_variables
# [:v1, :obj]

p self
# main