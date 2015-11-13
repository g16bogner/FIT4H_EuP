class Event < ActiveRecord::Base

	def free?
		self.price.blank? || self.price.zero? 
	end
end
