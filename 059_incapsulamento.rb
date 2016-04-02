# CONCETTO DI INCAPSULAMENTO, MANTENERE NASCOSTI I DETTAGLI
# RELATIVI AD UNA CLASSE
class Auto
	def initialize(velocita, comfort)
		@punteggio = velocita * comfort
	end

	def punteggio
		@punteggio
	end
	# non puoi settare dall'esterno punteggio
end

puts Auto.new(4, 5).punteggio
# 20