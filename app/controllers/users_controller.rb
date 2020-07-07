class UsersController < ApplicationController

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: UserSerializer.new(user)
        else
            render json: user.errors.full_messages
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: UserSerializer.new(user)
        else
            render json: user.errors.full_messages
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: UserSerializer.new(user)        
    end

    private

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name)
    end

end
