# esempio di ARGOMENTI DEFAULT DENTRO FIRMA DEI METODI
def factorial(n)
  n == 0 ? 1 : n * factorial(n - 1)
end

# definisco il fattoriale con un arg di default
def factorial_with_default(n = 5)
  n == 0 ? 1 : n * factorial_with_default(n - 1)
end

puts factorial 5 # => 120
# non passo nulla cosi usa ARG DEF
puts factorial_with_default # => 120
# passo a metodo con default un valore
puts factorial_with_default 3 # => 6