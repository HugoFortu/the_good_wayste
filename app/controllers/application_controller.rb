class ApplicationController < ActionController::Base
  before_action :check_location, except: [:position]

  private

  def check_location
    redirect_to '/we_need_your_position_please' unless cookies[:city]
  end
end
