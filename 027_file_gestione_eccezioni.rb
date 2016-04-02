# creo un blocco begin - rescue -end
# che crei e catturi eccezione

begin
  # inserisco istruzione che potrebbe dare
  # eccezione
  File.foreach( 'non_esiste.txt' ) do |riga|
    puts riga.chomp
  end
  # metto rescue che cattura eccezione
rescue Exception => e
  # stampo contenuto di message della
  # eccezione
  puts e.message
  puts "Facciamo finta che non sia cosi"
end

# prosecuzione esecuzione
puts "Proseguiamo"