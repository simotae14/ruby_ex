# puoi settare un elemento di default che sia
# DIVERSO DA NIL

# creo hash comn val defualt 0
frequenza_parola = Hash.new(0)

# creo stringa da parserizzare
frase = "Chicka chicka boom boom"

# creo array di parole e per ognuna controllo quante
# volte si trova nella frase
frase.split.each do |parola|
	frequenza_parola[parola.downcase] += 1
end

# stampo risultato
p frequenza_parola
# {"chicka"=>2, "boom"=>2}