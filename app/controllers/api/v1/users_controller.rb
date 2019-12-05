class Api::V1::UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(fname: params[:fname], lname: params[:lname], phonenumber: params[:phonenumber],username: params[:username], password: params[:password], password: params[:password])
        if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end


    def update
        user = User.find(params[:id])
        user.update(fname: params[:fname], lname: params[:lname], phonenumber: params[:phonenumber],username: params[:username])
        if user.save
            render json: user, status: :accepted
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
        end
    end
end
