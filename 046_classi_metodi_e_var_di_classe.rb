# esempio uso di VAR E METODI DI CLASSE
class MathFunctions
	# DEFINIZIONE METODO CLASSE COL self
	def self.doppio(var)
		times_called; var * 2;
	end

	# definizione con class << self
	class << self
		def times_called
			# valorizzo var classe
			@@times_called ||= 0; @@times_called += 1
		end
	end
end

# oppure fuori da classe
def MathFunctions.triplo(var)
	times_called; var * 3
end

# POSSO INVOCARE METODI E VAR CLASSE SENZA DEFINIRE ISTANZA
puts MathFunctions.doppio 5
# 10
puts MathFunctions.triplo(3)
# 9
# stampo var classe
puts MathFunctions.times_called
# 3