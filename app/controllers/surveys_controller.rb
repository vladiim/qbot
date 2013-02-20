class SurveysController < ApplicationController
  def index
  	@survey = current_user.surveys
  end
end