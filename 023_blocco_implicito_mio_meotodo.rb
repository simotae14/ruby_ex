# esempio definizione di un metodo personale con blocco implicito
def due_volte_implicito
  return "Nessun blocco" unless block_given?
  # se invece è passato blocco lo invoco
  yield
  yield
end

# passo il blocco
puts due_volte_implicito { print "Hello" }
# => Hello
# => Hello

# invoco senza passare il blocco
puts due_volte_implicito
# => Nessun blocco