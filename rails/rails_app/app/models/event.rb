class Event < ActiveRecord::Base

	def free?
		self.price.blank? || self.price.zero? 
	end

	def self.upcoming
		where("start_at >= ?", Time.now).order("start_at")
	end
end
