# lo splat è un argomento che e' un array che contiene un numero indefinito di valori passati da chiamata, puo essere ultimo o argomento di mezzo
def max(un_par, *numeri, altro)
  numeri.max # numeri e un array
end

# stampo il valore max di
puts max("qualcosa", 7, 32, -4, "altro")
# => 32