# esempio uso HASH
editor_props = { "font" => "Arial", "size" => 12, "color" => "red" }

# quello sopra non è un blocco ma un HASH

# alcolo lunghezza hash
puts editor_props.length # => 3
# accesso di un VALORE MEDIANTE KEY
puts editor_props["font"] # => Arial

# SETTO UN VALORE CON NOTAZIONE QUADRE
editor_props["background"] = "Blue"

# ora ciclo HASH per stampare KEY E VALUE
editor_props.each_pair do |key, value|
	puts "Key: #{key} value: #{value}"
end

# Key: font value: Arial
# Key: size value: 12
# Key: color value: red
# Key: background value: Blue