class Movie
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end
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

obj_movie1 = Movie.new('NinjaTurtles',4)
puts obj_movie1.to_s
obj_movie1.thumbs_up
puts obj_movie1.to_s






# def movie_listing(title,rank=10)
# 	"Movie: #{title.downcase.capitalize} hat #{weekday} das Ranking #{rank}"
# end

# def weekday
# 	Time.now.strftime("%A")
# end


# puts movie_listing("Ninja Turtles",4)
# puts movie_listing("SWAT",3)

# Beispiel für Variablen innerhalb von methoden
# def movie_listing
# 	var = "Movie: Ninja Turtles"
# 	puts "var innerhalb Methode: #{var.object_id}"
# 	var2 = "Movie: irgendein film"
# 	"#{var}\n#{var2}"
# end

# var = movie_listing
# puts "var ausserhalb: #{var.object_id }"
# puts "Rückgabewert #{var}"