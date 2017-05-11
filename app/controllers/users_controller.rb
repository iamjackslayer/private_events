class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def sign_up
  	@user = User.find_by(name: params[:user][:name])
  	if @user.nil?
  		@user = User.create!(name:params[:user][:name], email: params[:user][:email])
  		session[:user_id] = @user.id
  		redirect_to(action: "show", id: @user.id)
  	else
  		flash[:error] = "User has already existed in the database. Sign in instead?"
  		redirect_to(action: "new")
  	end
  end

  def sign_in
  	@user = User.find_by(name: params[:user][:name])
  	if !@user.nil?
  		session[:user_id] = @user.id
  		redirect_to(action: "show", id: @user.id)
  	else
  		flash[:error] = "Sign the fuck up."
  		redirect_to(action: "new")
  	end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def join
    current_user.attended_events << Event.find_by(id: params[:event][:event_id])
    flash[:success] = "You joined an event"
    redirect_to(action: :show, id: current_user.id)
  end
end
