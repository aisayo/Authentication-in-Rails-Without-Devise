class SessionsController < ApplicationController

    def login 
        #login form
        @user = User.new
      
    end 


    def create
        #find our user object 
        @user = User.find_by(email: params[:email])

        #want to check that the user exists
        #then authenticate their password

        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else 
            render :login
        end
        #logging in 
    end 

    def destroy
        session.clear
        redirect_to login_path
        #logging out 
    end 
end
