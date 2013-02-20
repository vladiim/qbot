class UsersController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  	  flash[:success] = "Congrats #{params[:user][:username]}! Your account has been created!"
  	  redirect_to surveys_path
  	else
  	  flash[:error] = "Sorry there was a problem signing you up..."
  	  render :new
  	end
  end
end