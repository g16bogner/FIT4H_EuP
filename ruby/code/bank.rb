class Customer

		def initialize(kontonummer,nachname,strasse,ort)
			@bank_account = kontonummer
			@lastname = nachname
			@street = strasse
			@where = ort
		end

		def print_adress
			puts "#{"Konto".ljust(40,'.')}#{@bank_account}"
			puts "#{"Name".ljust(40,'.')}#{@lastname}"
			puts "--------------------------------------------"
			puts "#{"Konto".ljust(10,'.')}#{@bank_account.rjust(40,'.')}"
			puts "#{"Name".ljust(10,'.')}#{@lastname.rjust(40,'.')}\n"
			puts "#{"Strasse".ljust(10,'.')}#{@street.rjust(40,'.')}\n"
			puts "#{"Ort".ljust(10,'.')}#{@where.rjust(40,'.')}\n"
			
		end






end
kunde1 = Customer.new("123456789","kaehlig","Schusterkamp","Schmalfeld")
puts kunde1.print_adress
