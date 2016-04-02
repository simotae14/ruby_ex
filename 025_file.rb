# come leggere un file
File.foreach( 'test.txt' ) do |riga|
  puts riga
  # inspect c'è a capo
  p riga
  # tolgo a capo
  p riga.chomp
  # creo array di parole
  p riga.split
end