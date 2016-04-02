arr1 = [5, 4, 1]

# var esterna con stesso nome parametro blocco
var1 = 5
arr1.each do |num_cor; var1|
	var1 = 10
	print "#{num_cor + var1} "
	# 15 14 11 
end
puts
puts var1
# 5