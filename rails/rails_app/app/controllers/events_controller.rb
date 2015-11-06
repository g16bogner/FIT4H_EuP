class EventsController < ApplicationController

	def index
		@events = %w(Arran Laphroig Lagavulin)
	end
end
