class UsersController < ApplicationController

def index 
    render json: User.all
end

def create
    user = User.create!(user_param)
    render json: user, status: 200
end


private 
def user_param 
    params.permit(:username, :password, :email)
end

end