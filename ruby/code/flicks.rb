class Movie
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end
	# def title
	# 	@title
	# end
	attr_reader :title

	# def title=(ptitle)
	# 	@title = ptitle
	# end
	attr_writer :title
	
	def thumbs_up
		@rank += 1
		#@rank = @rank + 1
	end
	def thumbs_down
		@rank -= 1
	end
	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end
end

movie1 = Movie.new('NinjaTurtles',4)
puts movie1.to_s
movie1.thumbs_up
puts movie1.to_s

puts movie1.title

movie1.title = "ninjaPurples"
puts movie1