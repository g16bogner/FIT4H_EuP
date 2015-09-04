str = "Die Woche besteht aus:\n\tMontag\n\tDienstag."
puts str

zahl = 15
puts zahl
#puts konvertiert eine Zahl in einen String, besser ist aber eine explizite Konvertierung (puts zahl.to_s)

#Zusammengesetzte String:
puts str + zahl.to_s

puts "#{str} der #{zahl}. im Monat"

tag = "Freitag"
puts "Heute ist #{tag}, der #{Time.new}."

3.times do
	puts str
end