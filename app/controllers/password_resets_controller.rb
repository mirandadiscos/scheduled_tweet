class PasswordResetsController < ApplicationController
    def new
        
    end

    def create
        @user = User.find_by(email: params[:email])

        if @user.present?
            # send email
            PasswordMailer.with(user: @user).reset.deliver_now  
        end
        redirect_to root_path, notice: "Check your email, if an account with that emails was found, we have sent a link"
    end
end