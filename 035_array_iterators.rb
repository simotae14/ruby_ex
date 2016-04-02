# esempi di METODI ITERATORI COME each, select, reject
# map

a = [1, 3, 4, 7, 8, 10]
a.each { |num| print num }
# => 1347810

puts

# creo ARRAY SELEZIONANDO SOLO ALCUNI ELEMENTI
new_arr = a.select { |num| num > 4 }
p new_arr
# => [7, 8, 10]

# azione combinata di SELECT e REJECT prendo
new_arr = a.select { |num| num < 10 }
			.reject { |num| num.even? }

p new_arr
# => [ 1, 3, 7 ]

# MAP crea un array sostituendo ogni ele con uno nuovo
new_arr = a.map { |x| x * 3 }
# stampo nuovo array
p new_arr
# => [3, 9, 12, 21, 24, 30]