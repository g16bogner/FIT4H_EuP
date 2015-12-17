class EventsController < ApplicationController

	def index
		@events = Event.upcoming 
	end
	def showall
		@events = Event.all
	end
	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end
	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to event_path(@event.id)
		else
			render "new"
		end
	end
	def edit
		@event = Event.find(params[:id])
	end
	def update
		@event = Event.find(params[:id])
		if @event.update(event_params)
			redirect_to event_path(@event.id)
		else
			render "edit"
		end
	end
	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path		
	end
	private
		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :start_at, :image_file, :capacity)
		end
end
