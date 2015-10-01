# 1. Legen Sie ein Array an mit den Zahlen 15 bis 20 an.
	#my_array = [15,16,..]
	my_array = (15..20).to_a
# a. geben Sie diese Zahlen in einem Block aus
	# my_array.each do |z|
	# 	puts z.to_s
	# end
	#my_array.each {|z|puts z.to_s }
# b. geben Sie die Zahlen mit dem Index etwa so aus: Index: 0 - Wert: 15
	# my_array.each_with_index do |z,i|
	# 	puts "Index: #{i} - Wert: #{z}"
	# end
# c. erzeugen Sie in einem Block einen Hash, wobei Sie die Arraywerte als Index nutzen und als Wert eine Zufallszahl zwischen 100 und 200 speichern.
	my_hash = Hash.new
	my_array.each do |val|
		my_hash[val] = rand(100..200)
	end
	#puts my_hash
# d. Geben Sie diesen Hash anschließen etwa so aus: Index: 15 - Wert: 121
	# my_hash.each do |myKey, myVal|
	# 	puts "Index: #{myKey} - Wert: #{myVal}"
	# end
# e. Ergänzen Sie die Ausgabe. Wenn der Wert größer als 150 ist, dann sieht die Ausgabe aus:  Index: 15 - Wert: 151. WOW
	# my_hash.each do |myKey, myVal|
	# 	if myVal > 150
	# 		puts "WOW: Index: #{myKey} - Wert: #{myVal}"
	# 	else
	# 		puts "Index: #{myKey} - Wert: #{myVal}"
	# 	end
	# end
# f. Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Array
	sec_array = Array.new
	my_array.each do |val|
		sec_array << val * val
	end
	puts sec_array
# g. ! Durchlaufen Sie das Array und speichern Sie die Quadratzahlen in einem Hash mit der Zahl als Schlüssel
	sec_hash = Hash.new
	my_array.each do |z|
		sec_hash[z] = z * z
	end
	puts sec_hash