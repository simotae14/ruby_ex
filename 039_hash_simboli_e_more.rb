# vediamo altre funzionalità HASH
albero_gen = { oldest: "Jim", older: "Joe", 
	younger: "Jack" }

# creazione nuovo valore con uso symbol come key
albero_gen[:youngest] = "Jeremy"

# stampo
p albero_gen
# {:oldest=>"Jim", :older=>"Joe", :younger=>"Jack", :youngest=>"Jeremy"}

# metodo con passaggio HASH COME PAR E SUO VALORE DEFAULT
def cambia_colore(props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end

# invoco metodo SENZA PASSARE PAR, usandi i default
cambia_colore
# Foreground: red
# Background: white

# passo un hash con solo foreground
cambia_colore({ :foreground => "green" })
# Foreground: green

# PASSAGGIO HASH COME ULTIMO PAR SENZA GRAFFE
cambia_colore background: "yella"
# Background: yella
cambia_colore :background => "magenta"
# Background: magenta