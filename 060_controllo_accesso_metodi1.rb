# versione con le keyword di controllo accesso
# specificate prima dei metodi che hanno tale accesso
class MioAlgo
	# privato
	private
		def test1
			"Privato"
		end

	# protetto
	protected
		def test2
			"Protetto"
		end
	# pubblico
	public
		def ancora_pubblico
			"Pubblico"
		end
end