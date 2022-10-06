class SessionsController < ApplicationController
# create method to login 
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id 
        render json: user
    end 

    # destroy  method to logout

    def destroy
        session.delete :user_id
        head :no_content
    end

end

