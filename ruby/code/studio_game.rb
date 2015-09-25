class Game

	def initialize(title)
		@title = title
		@players = []
	end 
	def add_player(player)
		@players << player
	end
end

class Player
	attr_reader :health
	attr_accessor :name

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health} und einem Score von #{score}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!!"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

	def score
		@health + @name.length
	end
end
player1 = Player.new('Theo', 5)
player2 = Player.new('Peter')
game = Game.new('Freitag')
game.add_player(player1)
#players = [player1, player2]

# players.each do |var|
# 	var.blam
# 	puts var
# end

# players.size.times do |i|
# 	puts i.to_s
# 	puts players[i]
# end


