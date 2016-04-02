# esempio dei due tipi di stringhe, fra singoli apici e fra doppi
single_quoted = 'stringa \n che interpreta un\'unica sequenza escape'

double_quoted = "stringa \n che interpreta piu di un\'unica sequenza escape"

# le stampo
puts single_quoted
puts double_quoted

# stringa \n che interpreta un'unica sequenza escape
# stringa 
#  che interpreta piu di un'unica sequenza escape

# TESTO INTERPOLAZIONE #{VAR}
def moltiplica (uno, due)
  "#{uno} moltiplicato per #{due} vale #{uno * due}"
end

# ora stampo la stringa interpolata
puts moltiplica(5, 3)
# 5 moltiplicato per 3 vale 15
