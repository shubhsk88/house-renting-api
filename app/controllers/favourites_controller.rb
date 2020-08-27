class FavouritesController < ApplicationController
  # rubocop:disable Layout/LineLength
  def create
    favourite = Favourite.new(favourite_params)
    if favourite.save
      render json: { status: 200, message: 'House succesfully add to favourites' }
    else
      render json: { state: 'Error', message: 'Error while updating the favourite', data: favourite.errors, status: :not_found }
    end
  end

  def destroy
    favourite = Favourite.find(params[:id])
    if favourite.destroy
      render json: { status: 200, message: 'House removed from list' }
    else
      render json: { state: 'Error', message: 'Error while updating the favourite', data: favourite.errors, status: :not_found }
    end
  end

  def favourite_params
    params.permit(:house_id, :user_id)
  end
end
# rubocop:enable Layout/LineLength
