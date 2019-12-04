class Api::V1::UserFavoritesController < ApplicationController
    def user_favs
        user_favorites = UserFavorite.select{ |check_user| check_user.user_id == params[:user_id]}
        render json: user_favorites
    end

    def index
        user_favorites = UserFavorite.all
        render json: user_favorites
    end


    def create
        user_favorite = UserFavorite.find_or_create_by(user_favorites_params)
        if user_favorite.save
            render json: user_favorite
        else
            render json: { errors: user_favorite.errors.full_messages }, status: :unprocessible_entity
        end
    end


    def destroy
        user_favorite = UserFavorite.find(params[:id])
        user_favorite.destroy
        render json: "Successfully deleted!"
    end

    private

    def user_favorites_params
        params.permit(:user_id, :name, :venue_name, :venue_address, :venue_phone, :venue_access, :venue_opening, :venue_closing, :venue_schedule_details, :media, :description, :price, :date_start, :date_end, :days_before_end, :permanent_event, :latitude, :longitude, :image)
    end
end
