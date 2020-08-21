class HousesController < ApplicationController
    def index
        @houses=House.all.includes(:favourites)
        json_response(@houses)
        
    end
    def show
       id=params[:id]
       house=House.find(id)
       render :json => house.to_json(:include => :favourites)

    #    json_response(house)
    end


    
end
