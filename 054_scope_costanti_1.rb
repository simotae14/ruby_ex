# lo scope delle COSTANTI è diverso, se una costante
# è definita fuori da una classe e metodo si vede
# anche al suo interno
module Test
	PI = 3.14
	class Test2
		def quanto_vale_pi
			# la costante si vede pure qui
			puts PI
		end
	end
end

# creo istanza di Test2 su cui invoco metodo
# quanto_vale_pi
Test::Test2.new.quanto_vale_pi
# 3.14