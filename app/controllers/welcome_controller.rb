class WelcomeController < ApplicationController
    def index
        if session[:user_id].nil?
          
        else
          redirect_to '/dashboard/'
        end
      end
end
