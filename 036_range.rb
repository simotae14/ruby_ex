# esempio uso range, UTILI PER SEQUENZE CONSECUTIVE
# in condizioni esempio case
un_range = 1..3

# cerco il massimo elemento
puts un_range.max # 3
# vedere se il numero è incluso
puts un_range.include? 2
# true

# il range CONTIENE ANCHE VALORI DECIMALI
puts (1...10) === 5.3
# true

# range anche di caratteri
puts ('a'...'r') === "r"
# false, perché limite massimo escluso

# RECUPERO DUE ELEMENTI A CASO DI UN RANGE
p ('k'..'z').to_a.sample(2)
# ["v", "p"]

# VEDIAMO USO DEI range NEGLI INTERVALLI DI UN CASE
age = 55
case age
	when 0..12 then puts "Ancora un bimbo"
	when 13..99 then puts "Giovane d'animo"
	else puts "Stai diventando vecchio..."
end
# Giovane d'animo
