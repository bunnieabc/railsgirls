class EventsController < ApplicationController
	def index
		@events = Event.all
	end
	def new
		@event = Event.new
	end

	def show
		@event = Event.find(params[:id])
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to :action => :index
		else
		    render :action => :new
		end

		flash[:notice] = "event was successfully created"

	end

	def edit
		@event =Event.find(params[:id])
	end

	def update
		@event = Event.find(params[:id])
		@event.update(event_params)
		
		redirect_to :action=> :show, :id=>@event
		
		flash[:notice] = "event was successfully updated"
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy

		@event.save
		redirect_to :action=>"index"
		flash[:notice] = "event was successfully destroyed"
	end


	private
	def event_params
		params.require(:event).permit(:name, :description)
	end

end
