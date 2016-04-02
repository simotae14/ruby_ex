# i parametri non devono aver SPECIFICATO IL TIPO
def add(one, two)# potrebbero esser interi o stringhe
  one + two
end

# anche il return puo assumere diversi tipi e se non definito ultima istruzione eseguita viene tornata
def divide(one, two)
  return "Non penso proprio" if two == 0
  one / two
end

# sommo interi
puts add(2, 2) # => 4
# divido per 0
puts divide(2, 0) # => Non penso proprio
# divido per un numero
puts divide(12, 4) # => 3