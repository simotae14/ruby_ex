# module come namespace, tipo i package
module Sports
	class Match
		attr_accessor :score
	end
end

module Patterns
	class Match
		attr_accessor :complete
	end
end

# creo istanza usando module namespace
match1 = Sports::Match.new
match1.score = 45; puts match1.score
# 45

# creo istanza usando module namespace
match2 = Patterns::Match.new
match2.complete = true; puts match2.complete
# true