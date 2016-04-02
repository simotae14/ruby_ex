# SECONDO TIPO, CLASSICO CON USO TRIPLE EQUAL IMPLICITO PER LE COMPARAZIONI
name = "Fisher"
case name # target
  when /fish/i then puts "Contiene fish"
  when 'Smith' then puts "Il tuo nome e' Smith"
end
    
    # => Contiene fish