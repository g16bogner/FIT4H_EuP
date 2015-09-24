# Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
# Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
# Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an

class Calculator

	attr_accessor :zahl1, :zahl2

	def initialize(pzahl1, pzahl2=0)
		@zahl1 = pzahl1
		@zahl2 = pzahl2
	end


	def add
		@erg = @zahl1 + @zahl2
		puts "Das Ergebnis lautet: #{@erg}"
	end
	def sub
		@erg = @zahl1 - @zahl2
		puts "Das Ergebnis lautet: #{@erg}"
	end
end

obj_eins=Calculator.new(5,6)
obj_eins.add
obj_eins.sub
obj_eins.zahl1 = 10
obj_eins.sub
