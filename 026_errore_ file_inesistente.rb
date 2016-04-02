# esempio ricerca di File non esistente
File.foreach( 'non_esisto.txt' ) do |riga|
  puts riga.chomp
end