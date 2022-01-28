class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find_by_id(session[:user_id])
        else

        end
    end
end
