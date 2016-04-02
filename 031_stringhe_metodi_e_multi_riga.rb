# altri metodi su stringhe
mio_nome = " tim"

# lstrip RIMUOVE SPAZIO INIZIALE
# capitalize TRASFORMA IN MAIUSCOLA PRIMA LETTERA
puts mio_nome.lstrip.capitalize 
# Tim

# ora stampo inspect di mio_nome
# e vedro che non è stata salvata
p mio_nome
#  tim

# uso il metodo lstrip DESTRUCTIVE
mio_nome.lstrip!
# tim

# SOSTITUISCO CARATTERE AD INDICE x
mio_nome[0] = 'K'
# stampo la nuova stringa
puts mio_nome
# Kim

# DEFINIZIONE STRINGA MULTIRIGA
tempo_cor = %Q{E' una giornata calda fuori
               Prendete gli ombrelli...}


# ITERATORE lines per ciclare ogni riga
tempo_cor.lines do |line|
  # sub SOSITUZIONE DI UNA SOTTOSTRINGA CON UN'ALTRA
  line.sub! 'calda', 'piovosa'
  # stampo la riga senza spazi ad inizio e fine strip
  puts "#{line.strip}"
end

# => E' una giornata piovosa fuori
# => Prendete gli ombrelli...