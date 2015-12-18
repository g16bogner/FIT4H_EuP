class RegistrationsController < ApplicationController
	before_action :set_event
	def index
		
		@registrations = @event.registrations
	end

	def new
		@registration = @event.registrations.new
	end

	def create
		@registration = @event.registrations.new(registration_params)
		if @registration.save
			#flash[:notice] = "Registrierung erfolgreich!"
			redirect_to event_path(@event.id), notice: "Registrierung erfolgreich!"
		else
			flash[:alert] = "Penner, du musst eingeben woher du den Event kennst."
			render "new"
		end
	end

	private
		def registration_params
			params.require(:registration).permit(:name, :email, :how_heard)
		end
		def set_event
			@event = Event.find(params[:event_id])
		end
end
