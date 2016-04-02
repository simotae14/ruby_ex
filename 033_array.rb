# esempio uso ARRAY

# SONO ETEROGENEI
arr_eterogeneous = [1, "two", :three]

# ACCESSO AD UN ELE TRMITE INDICE
puts arr_eterogeneous[1]
# two

# CREAZIONE LETTERALE DI UN ARRAY DI STRINGHE
arr_stringhe = %w{ ma che bella giornata! }
# ACCESSO CON INDICE NEGATIVO
puts arr_stringhe[-2]
# bella

# METODI first E last
puts "#{arr_stringhe.first} - #{arr_stringhe.last}"
# ma - giornata!

# ACCESSO A N ELEMENTI A PARTIRE DA INDICE
p arr_stringhe[-3, 2]
# ["che", "bella"]

# CREO STRINGA DA ELEMENTI ARRAY
puts arr_stringhe.join(',')
# ma,che,bella,giornata!