class EventsController < ApplicationController
  def create
  	@user = User.find_by(id: session[:user_id])
  	@event = @user.events.build(description: params[:event][:description], date: Time.now)
  	@event.save
  	redirect_to(action: "show")
  end

  def show
  	@user = User.find_by(id: session[:user_id])
  end

  def new
  	@event = Event.new
  end

  def index
  	@events =Event.all
  end
end
