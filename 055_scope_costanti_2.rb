# il valore di una costante dentro ad una classe puo
# anche esser modificato
module MioModulo
	MiaCostante = 'Costante Esterna'
	class MiaClasse
		puts MiaCostante
		# Costante Esterna
		MiaCostante = 'Costante Interna'
		puts MiaCostante
		# Costante Interna
	end
	# fuori scope Classe la Costante riprende suo
	# valore esterno
	puts MiaCostante
	# Costante Esterna
end