class FavouritesController < ApplicationController
  # rubocop:disable Layout/LineLength
  def create
    favourite = Favourite.new(favourite_params)
    if favourite.save
      render json: { message: 'House succesfully add to favourites' }
    else
      render json: {  message: 'Error while updating the favourite', data: favourite.errors, status: :not_found }
    end
  end

  def destroy
    favourite = Favourite.find(params[:id])
    if favourite.destroy
      render json: {  message: 'House removed from list' }
    else
      render json: {  message: 'Error while updating the favourite', data: favourite.errors, status: :not_found },status: :not_found
    end
  end

  def favourite_params
    params.permit(:house_id, :user_id)
  end
end
# rubocop:enable Layout/LineLength
