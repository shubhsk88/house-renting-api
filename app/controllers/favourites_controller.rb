class FavouritesController < ApplicationController
    def create
            favourite=Favourite.new(favourite_params)
            if(favourite.save)
                json_response(favourite)
            else
                render json:{state: "Error",message:"Error while updating the favourite",data:favourite.errors,status: :not_found}
            end    
    end

    def destroy
       favourite= Favourite.find(params[:id])
        if(favourite.destroy)
            json_response(favourite)
        else
            render json:{state: "Error",message:"Error while updating the favourite",data:favourite.errors,status: :not_found}
        end        

    end


    def favourite_params
        params.permit(:house_id)
    end




end
