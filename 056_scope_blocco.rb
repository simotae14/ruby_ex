# IL BLOCCO EREDITA LO SCOPE AL SUO ESTERNO
class ContoBanca
	attr_accessor :id, :saldo
	def initialize(id, saldo)
		@id = id
		@saldo = saldo
	end
end

# creo istanze di ContoBanca
conto1 = ContoBanca.new(123, 200)
conto2 = ContoBanca.new(321, 100)
conto3 = ContoBanca.new(421, -100)
conti = [conto1, conto2, conto3]

# questa var è vista da SCOPE BLOCCO
saldo_totale = 0
conti.each do |ogniConto|
	saldo_totale += ogniConto.saldo
end
