# esempio di gestione del singolo caso di FILE
# INESISTENTE e non in generale di eccezioni
if File.exist? 'non_esisto.txt'
  # allora lo leggo
  File.foreach( 'non_esisto.txt' ) do |line|
    puts line.chomp
  end
end