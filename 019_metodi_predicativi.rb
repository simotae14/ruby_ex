# METODI PREDICATIVI
# TERMINANO CON ? E RESTITUISCONO BOOLEANO
def can_divide_by?(number)
  return false if number.zero?
  true # altrimenti
end

# vedo se puo dividere
puts can_divide_by? 3 # => true
puts can_divide_by? 0 # => false