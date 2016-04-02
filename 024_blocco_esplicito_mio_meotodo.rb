# esempio definizione di un metodo personale con blocco ESPLICITO
def due_volte_esplicito (&sono_blocco)
  return "Nessun blocco" if sono_blocco.nil?
  # se invece è passato blocco lo invoco
  #esplicitamente
  sono_blocco.call
  sono_blocco.call
end

# passo il blocco
puts due_volte_esplicito { puts "Hello" }
# => Hello
# => Hello

# invoco senza passare il blocco
puts due_volte_esplicito
# => Nessun blocco