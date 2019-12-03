class Api::V1::UsersController < ApplicationController
    def create
        user = User.new(fname: params[:fname], lname: params[:lname], phonenumber: params[:phonenumber],username: params[:username], password: params[:password])
        if user.save
            render json: user, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end


    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.save
            render json: user, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end
end
