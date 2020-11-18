class DashboardController < ApplicationController
  def index
    if session[:user_id].nil?
      redirect_to root_url
    else
      
    end
  end
end
