# Methoden:
# a. definieren Sie eine Methode say_hello mit dem Argument name. Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'
def say_hello(name)
	puts "Ich bin #{name}"
end
say_hello('Ludewick')

# b. rufen Sie die Methode mit verschiedenen namen auf
# c. puts soll nun aus der Methode entfernt werden
def say_hello(name)
	"Ich bin #{name}"
end
puts say_hello('Ludewick2')
# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'
def say_hello(name, health=100)
	"Ich bin #{name} mit einem Wert von #{health}"
end
puts say_hello('Ludewick3')
# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'
def say_hello(name, health=100)
	"Ich bin #{name} mit einem Wert von #{health} um #{time}"
end
def time
	Time.new.strftime("%R")
end

puts say_hello('Ludewick3')
# Klassen:
# a. erstellen Sie eine Klasse mit der Bezeichnung Player
class Player
	# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end

	def to_s
		"Ich bin #{@name} mit einem Wert von #{@health}"
	end

	def blam
		@health -=10
		puts "#{@name} wurde geblamt!!!"
	end
	def w00t
		@health += 10
		puts "#{@name} wurde gew00tet!!!! Aktueller Stand: #{@health}"
	end

end
# b. erstellen Sie ein Objekt player1 der Klasse 
#player1 = Player.new

# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
player1 = Player.new('Theo', 5)
puts player1
# e. setzen Sie fuer health einen Standardwert 100
# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
player2 = Player.new('Peter')
puts player2
# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
puts player1.say_hello
#puts player2.say_hello
player1.blam
player2.w00t
# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.
puts player1
puts player2

