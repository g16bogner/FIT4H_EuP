module ApplicationHelper
	def format_price(event)
		if event.free? 
			"FREE"
		else
			number_to_currency(event.price, unit: "€ ") 
		end
	end
end
