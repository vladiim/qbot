# class UserSessionsController < ApplicationController

  # skip_filter :authorize

  # def new
  # 	@user_session = UserSession.new
  # end

  # def create
  # 	@user_session = UserSession.new(params[:user_session])
  # 	if @user_session.save
  # 		flash[:success] = SnapzSayz::UserSessionSpeak.login
  #     redirect_back root_url
  # 	else
  #     flash[:error] = SnapzSayz::UserSessionSpeak.didnt_login
  # 		render action: :new
  # 	end
  # end
# end