# a. Legen Sie eine neue Datei studio_game.rb an
# b. speichern Sie in der Variable name1 den Wert 'larry'
name1 = "larry" 
# c. speichern Sie in der Variable health den Wert 60
health = 60
# d. geben Sie auf der Konsole: 'larry's health is 60' , unter Verwendung der Variablen aus (2 Versionen)
puts "#{name1}'s health is #{health}"
puts name1 + "'s health is " + health.to_s
# e. verdreifachen Sie den Wert von larrys health
puts "#{name1}'s health is #{3 * health}"
# f. reduzieren Sie die health durch eine Division durch 9. Geben Sie eine Variante mit float und eine mit integer aus
puts "#{name1}'s health is #{health / 9}"
puts "#{name1}'s health is #{health / 9.0}"

# g. erzeugen Sie folgende Ausgabe:
# 	Players:
# 		larry
# 		curly
# 		moe
puts "Players: \n\tlarry \n\tcurly \n\tmoe "
# h. speichern sie die Namen der Spieler in Variablen und geben Sie diese erneut wie abgebildet aus
name2 = "moe"
name3 = 'curly'

puts "Players: \n\t#{name1} \n\t#{name2} \n\t#{name3} "


