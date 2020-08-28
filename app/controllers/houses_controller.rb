class HousesController < ApplicationController
  def index
    @houses = House.all.includes(:favourites)
    render json: {  houses: @houses, message: 'Fetch successful' }
  end

  def show
    id = params[:id]
    house = House.find(id)
    render json: house.to_json(include: :favourites)

    #    json_response(house)
  end
end
