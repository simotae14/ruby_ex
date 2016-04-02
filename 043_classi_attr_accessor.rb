# uso di attr_accessor per creare implicitamente
# costruttore e getter e setter
class Persona
	attr_accessor :nome, :eta
end

# creo istanza di Persona
persona1 = Persona.new
# accedo a nome che è definito ma a nil
p persona1.nome # nil

# setto nome
persona1.nome = "Mike"
# setto eta
persona1.eta = 15

# stampo nome
puts persona1.nome
# Mike
puts persona1.eta
# 15

# ora setto eta a stringa, E POSSO FARLO PERCHE
# RUBY E DINAMICO
persona1.eta = "fifteen"
puts persona1.eta
# fifteen