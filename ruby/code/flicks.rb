require_relative 'movie'
require_relative 'playlist'


movie1 = Movie.new('NinjaTurtles',4)
puts movie1.status
movie2 = Movie.new('45 years',8)
movie3 = Movie.new('8 mm',10)
puts movie3.status
pl = Playlist.new("Theo")
pl.add_movie(movie1)
pl.add_movie(movie2)
pl.play