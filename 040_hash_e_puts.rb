# COME FACCIO A STAMPARE UN HASH??
a_hash = { :one => "one" }

# lo stampi con uso var
puts a_hash
# {:one=>"one"}

# MA SE TENTI DI STAMPARLO DIRETTAMENTE CON
# DEFINIZIONE LETTERALE HASH DA ERRORE
# puts { :one => "one" }
# syntax error, unexpected =>, expecting '}'
# Ruby si confonfe e pensa che SIA UN BLOCCO
# E NON UN HASH

# per aggirare il problema
# 1. inserire HASH FRA TONDE
puts ({ :one => "one" })
# {:one=>"one"}

# 2. TOGLEIRE ANCHE LE GRAFFE
puts one: "one"
# {:one=>"one"}