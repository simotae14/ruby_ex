# le var dentro al blocco sono sue locali
arr = [5, 4, 1]
num_cor = 10
arr.each do |num_cor|
	una_var = 10 # nn ci puoi accedere fuori dal blocco
	print num_cor.to_s + " "
	# 5 4 1 
end	
puts
puts num_cor
# 10