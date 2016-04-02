# esempio di EREDITARIETA'
class Cane
	def to_s
		"Cane"
	end
	def abbaia
		"abbaia forte"
	end
end

# creo sottoclasse
class PiccoloCane < Cane
	def abbaia # sovrascrive metodo madre
		"abbaia piano"
	end
end

# creo istanza di Cane
cane = Cane.new
# creo istanza di PiccoloCane
piccolo_cane = PiccoloCane.new

# invoco metodo abbaia su istanza di Cane
puts "#{cane}1 #{cane.abbaia}"
# Cane1 abbaia forte

# invoco metodo abbaia su istanza di PiccoloCane
puts "#{piccolo_cane}2 #{piccolo_cane.abbaia}"
# Cane2 abbaia piano